.class public Lorg/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final b:Ljava/lang/String;

.field private static c:Z

.field private static d:Ljava/util/ArrayList;

.field private static e:Lorg/acra/f;

.field private static g:Lorg/acra/ErrorReporter;

.field private static h:Landroid/content/Context;


# instance fields
.field a:Ljava/util/Map;

.field private f:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private i:Ljava/lang/String;

.field private j:Lorg/acra/r;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lorg/acra/ErrorReporter;->c:Z

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->d:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Lorg/acra/f;

    invoke-direct {v0}, Lorg/acra/f;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/acra/q;->IS_SILENT:Lorg/acra/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ErrorReporter;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->a:Ljava/util/Map;

    .line 239
    sget-object v0, Lorg/acra/r;->SILENT:Lorg/acra/r;

    iput-object v0, p0, Lorg/acra/ErrorReporter;->j:Lorg/acra/r;

    return-void
.end method

.method private static a(Ljava/lang/String;Lorg/acra/f;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 878
    :try_start_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Writing crash report file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    if-nez p1, :cond_b

    .line 880
    sget-object p1, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    .line 882
    :cond_b
    if-nez p0, :cond_5d

    .line 883
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 884
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 885
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 886
    sget-object v2, Lorg/acra/q;->IS_SILENT:Lorg/acra/q;

    invoke-virtual {p1, v2}, Lorg/acra/f;->a(Lorg/acra/q;)Ljava/lang/String;

    move-result-object v2

    .line 887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v2, :cond_4b

    sget-object v0, Lorg/acra/ErrorReporter;->b:Ljava/lang/String;

    :goto_2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".stacktrace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 889
    :goto_3b
    sget-object v1, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_53

    move-result-object v1

    .line 891
    :try_start_42
    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/acra/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_4e

    .line 893
    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 899
    :goto_4a
    return-object v0

    .line 887
    :cond_4b
    const-string v0, ""

    goto :goto_2d

    .line 893
    :catchall_4e
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_53} :catch_53

    .line 896
    :catch_53
    move-exception v0

    .line 897
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "An error occured while writing the report file..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    const/4 v0, 0x0

    goto :goto_4a

    :cond_5d
    move-object v0, p0

    goto :goto_3b
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lorg/acra/f;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 980
    new-instance v0, Lorg/acra/f;

    invoke-direct {v0}, Lorg/acra/f;-><init>()V

    .line 981
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 984
    :try_start_9
    invoke-virtual {v0, v1}, Lorg/acra/f;->a(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    .line 986
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 988
    return-object v0

    .line 986
    :catchall_10
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method private a(Ljava/lang/Throwable;Lorg/acra/r;)Lorg/acra/n;
    .registers 16
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 681
    .line 683
    if-nez p2, :cond_42e

    .line 686
    iget-object p2, p0, Lorg/acra/ErrorReporter;->j:Lorg/acra/r;

    move v2, v3

    .line 698
    :goto_8
    if-nez p1, :cond_11

    .line 699
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Report requested by developer"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 702
    :cond_11
    sget-object v0, Lorg/acra/r;->TOAST:Lorg/acra/r;

    if-eq p2, v0, :cond_23

    sget-object v0, Lorg/acra/r;->NOTIFICATION:Lorg/acra/r;

    if-ne p2, v0, :cond_2b

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v0

    invoke-interface {v0}, Lorg/acra/a/a;->n()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 705
    :cond_23
    new-instance v0, Lorg/acra/l;

    invoke-direct {v0, p0}, Lorg/acra/l;-><init>(Lorg/acra/ErrorReporter;)V

    invoke-virtual {v0}, Lorg/acra/l;->start()V

    .line 722
    :cond_2b
    sget-object v4, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    :try_start_2d
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v5

    invoke-interface {v5}, Lorg/acra/a/a;->w()[Lorg/acra/q;

    move-result-object v0

    array-length v6, v0

    if-nez v6, :cond_4c

    invoke-interface {v5}, Lorg/acra/a/a;->x()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4a

    const-string v6, ""

    invoke-interface {v5}, Lorg/acra/a/a;->x()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43b

    :cond_4a
    sget-object v0, Lorg/acra/ACRA;->DEFAULT_REPORT_FIELDS:[Lorg/acra/q;

    :cond_4c
    :goto_4c
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    sget-object v0, Lorg/acra/q;->REPORT_ID:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->REPORT_ID:Lorg/acra/q;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    sget-object v0, Lorg/acra/q;->DUMPSYS_MEMINFO:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->DUMPSYS_MEMINFO:Lorg/acra/q;

    invoke-static {}, Lorg/acra/k;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7e
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_139

    const-string v0, "acra.syslog.enable"

    const/4 v8, 0x1

    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_44b

    const-string v0, "android.permission.READ_LOGS"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_44b

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "READ_LOGS granted! ACRA can include LogCat and DropBox data."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/acra/q;->LOGCAT:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v8, Lorg/acra/q;->LOGCAT:Lorg/acra/q;

    const/4 v9, 0x0

    invoke-static {v9}, Lorg/acra/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b8
    sget-object v0, Lorg/acra/q;->EVENTSLOG:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v8, Lorg/acra/q;->EVENTSLOG:Lorg/acra/q;

    const-string v9, "events"

    invoke-static {v9}, Lorg/acra/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d1
    sget-object v0, Lorg/acra/q;->RADIOLOG:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v8, Lorg/acra/q;->RADIOLOG:Lorg/acra/q;

    const-string v9, "radio"

    invoke-static {v9}, Lorg/acra/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ea
    sget-object v0, Lorg/acra/q;->DROPBOX:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v8, Lorg/acra/q;->DROPBOX:Lorg/acra/q;

    sget-object v9, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v10

    invoke-interface {v10}, Lorg/acra/a/a;->r()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/acra/j;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_107
    :goto_107
    sget-object v0, Lorg/acra/q;->DEVICE_ID:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    const-string v0, "acra.deviceid.enable"

    const/4 v8, 0x1

    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_139

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_139

    const-string v0, "phone"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_139

    sget-object v8, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v9, Lorg/acra/q;->DEVICE_ID:Lorg/acra/q;

    invoke-virtual {v8, v9, v0}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_139
    sget-object v0, Lorg/acra/q;->INSTALLATION_ID:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v8, Lorg/acra/q;->INSTALLATION_ID:Lorg/acra/q;

    sget-object v9, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-static {v9}, Lorg/acra/c/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14e
    sget-object v0, Lorg/acra/q;->INITIAL_CONFIGURATION:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v8, Lorg/acra/q;->INITIAL_CONFIGURATION:Lorg/acra/q;

    iget-object v9, p0, Lorg/acra/ErrorReporter;->i:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15f
    sget-object v0, Lorg/acra/q;->CRASH_CONFIGURATION:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget-object v8, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v9, Lorg/acra/q;->CRASH_CONFIGURATION:Lorg/acra/q;

    invoke-static {v0}, Lorg/acra/e;->a(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17a
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_461

    sget-object v7, Lorg/acra/q;->APP_VERSION_CODE:Lorg/acra/q;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19a

    sget-object v7, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v8, Lorg/acra/q;->APP_VERSION_CODE:Lorg/acra/q;

    iget v9, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19a
    sget-object v7, Lorg/acra/q;->APP_VERSION_NAME:Lorg/acra/q;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1af

    sget-object v7, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v8, Lorg/acra/q;->APP_VERSION_NAME:Lorg/acra/q;

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v9, :cond_45d

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1ac
    invoke-virtual {v7, v8, v0}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1af
    :goto_1af
    sget-object v0, Lorg/acra/q;->PACKAGE_NAME:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c2

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->PACKAGE_NAME:Lorg/acra/q;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c2
    sget-object v0, Lorg/acra/q;->BUILD:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->BUILD:Lorg/acra/q;

    const-class v8, Landroid/os/Build;

    invoke-static {v8}, Lorg/acra/p;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d7
    sget-object v0, Lorg/acra/q;->PHONE_MODEL:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->PHONE_MODEL:Lorg/acra/q;

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e8
    sget-object v0, Lorg/acra/q;->ANDROID_VERSION:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f9

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->ANDROID_VERSION:Lorg/acra/q;

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f9
    sget-object v0, Lorg/acra/q;->BRAND:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20a

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->BRAND:Lorg/acra/q;

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20a
    sget-object v0, Lorg/acra/q;->PRODUCT:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->PRODUCT:Lorg/acra/q;

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21b
    sget-object v0, Lorg/acra/q;->TOTAL_MEM_SIZE:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_246

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->TOTAL_MEM_SIZE:Lorg/acra/q;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    new-instance v9, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v10, v8

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_246
    sget-object v0, Lorg/acra/q;->AVAILABLE_MEM_SIZE:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_271

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->AVAILABLE_MEM_SIZE:Lorg/acra/q;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    new-instance v9, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v10, v8

    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_271
    sget-object v0, Lorg/acra/q;->FILE_PATH:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_288

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->FILE_PATH:Lorg/acra/q;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_288
    sget-object v0, Lorg/acra/q;->DISPLAY:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_363

    const-string v0, "window"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v7, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v8, Lorg/acra/q;->DISPLAY:Lorg/acra/q;

    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "width="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "height="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "pixelFormat="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/view/Display;->getPixelFormat()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "refreshRate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "fps\nmetrics.density=x"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v11, v9, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v11, 0xa

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "metrics.scaledDensity=x"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v11, v9, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v11, 0xa

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "metrics.widthPixels="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v11, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v11, 0xa

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "metrics.heightPixels="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v11, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v11, 0xa

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "metrics.xdpi="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v11, v9, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v11, 0xa

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "metrics.ydpi="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v9, v9, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_363
    sget-object v0, Lorg/acra/q;->USER_CRASH_DATE:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37f

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    sget-object v7, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v8, Lorg/acra/q;->USER_CRASH_DATE:Lorg/acra/q;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37f
    sget-object v0, Lorg/acra/q;->CUSTOM_DATA:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_392

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->CUSTOM_DATA:Lorg/acra/q;

    invoke-direct {p0}, Lorg/acra/ErrorReporter;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_392
    sget-object v0, Lorg/acra/q;->USER_EMAIL:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a9

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->USER_EMAIL:Lorg/acra/q;

    const-string v8, "acra.user.email"

    const-string v9, "N/A"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a9
    sget-object v0, Lorg/acra/q;->DEVICE_FEATURES:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3bc

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v6, Lorg/acra/q;->DEVICE_FEATURES:Lorg/acra/q;

    invoke-static {v4}, Lorg/acra/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3bc
    sget-object v0, Lorg/acra/q;->ENVIRONMENT:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d1

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v4, Lorg/acra/q;->ENVIRONMENT:Lorg/acra/q;

    const-class v6, Landroid/os/Environment;

    invoke-static {v6}, Lorg/acra/p;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d1
    sget-object v0, Lorg/acra/q;->SETTINGS_SYSTEM:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e6

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v4, Lorg/acra/q;->SETTINGS_SYSTEM:Lorg/acra/q;

    sget-object v6, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-static {v6}, Lorg/acra/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e6
    sget-object v0, Lorg/acra/q;->SETTINGS_SECURE:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fb

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v4, Lorg/acra/q;->SETTINGS_SECURE:Lorg/acra/q;

    sget-object v6, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-static {v6}, Lorg/acra/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3fb
    sget-object v0, Lorg/acra/q;->SHARED_PREFERENCES:Lorg/acra/q;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_410

    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v4, Lorg/acra/q;->SHARED_PREFERENCES:Lorg/acra/q;

    sget-object v5, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-static {v5}, Lorg/acra/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_410
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_410} :catch_454

    .line 725
    :cond_410
    :goto_410
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 726
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 727
    invoke-virtual {p1, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 728
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 731
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 732
    :goto_424
    if-eqz v0, :cond_46c

    .line 733
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 734
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_424

    .line 692
    :cond_42e
    sget-object v2, Lorg/acra/r;->SILENT:Lorg/acra/r;

    if-ne p2, v2, :cond_4bc

    iget-object v2, p0, Lorg/acra/ErrorReporter;->j:Lorg/acra/r;

    sget-object v4, Lorg/acra/r;->SILENT:Lorg/acra/r;

    if-eq v2, v4, :cond_4bc

    move v2, v0

    .line 694
    goto/16 :goto_8

    .line 722
    :cond_43b
    :try_start_43b
    const-string v6, ""

    invoke-interface {v5}, Lorg/acra/a/a;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    sget-object v0, Lorg/acra/ACRA;->DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/q;

    goto/16 :goto_4c

    :cond_44b
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "READ_LOGS not allowed. ACRA will not include LogCat and DropBox data."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_452
    .catch Ljava/lang/Exception; {:try_start_43b .. :try_end_452} :catch_454

    goto/16 :goto_107

    :catch_454
    move-exception v0

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Error while retrieving crash data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_410

    :cond_45d
    :try_start_45d
    const-string v0, "not set"

    goto/16 :goto_1ac

    :cond_461
    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v7, Lorg/acra/q;->APP_VERSION_NAME:Lorg/acra/q;

    const-string v8, "Package info unavailable"

    invoke-virtual {v0, v7, v8}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46a
    .catch Ljava/lang/Exception; {:try_start_45d .. :try_end_46a} :catch_454

    goto/16 :goto_1af

    .line 736
    :cond_46c
    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v6, Lorg/acra/q;->STACK_TRACE:Lorg/acra/q;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 740
    invoke-static {v1, v1}, Lorg/acra/ErrorReporter;->a(Ljava/lang/String;Lorg/acra/f;)Ljava/lang/String;

    move-result-object v0

    .line 743
    sget-object v4, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v5, Lorg/acra/q;->IS_SILENT:Lorg/acra/q;

    invoke-virtual {v4, v5}, Lorg/acra/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v4, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v5, Lorg/acra/q;->USER_COMMENT:Lorg/acra/q;

    invoke-virtual {v4, v5}, Lorg/acra/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v4, Lorg/acra/r;->SILENT:Lorg/acra/r;

    if-eq p2, v4, :cond_4a0

    sget-object v4, Lorg/acra/r;->TOAST:Lorg/acra/r;

    if-eq p2, v4, :cond_4a0

    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "acra.alwaysaccept"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4b3

    .line 750
    :cond_4a0
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->a()V

    .line 752
    new-instance v0, Lorg/acra/n;

    invoke-direct {v0, p0, v2}, Lorg/acra/n;-><init>(Lorg/acra/ErrorReporter;Z)V

    .line 753
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "About to start ReportSenderWorker from #handleException"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {v0}, Lorg/acra/n;->start()V

    .line 761
    :goto_4b2
    return-object v0

    .line 757
    :cond_4b3
    sget-object v2, Lorg/acra/r;->NOTIFICATION:Lorg/acra/r;

    if-ne p2, v2, :cond_4ba

    .line 759
    invoke-static {v0}, Lorg/acra/ErrorReporter;->a(Ljava/lang/String;)V

    :cond_4ba
    move-object v0, v1

    .line 761
    goto :goto_4b2

    :cond_4bc
    move v2, v3

    goto/16 :goto_8
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add user comment to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3f

    if-eqz p2, :cond_3f

    :try_start_18
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    new-instance v0, Lorg/acra/f;

    invoke-direct {v0}, Lorg/acra/f;-><init>()V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_21} :catch_45
    .catch Ljava/util/InvalidPropertiesFormatException; {:try_start_18 .. :try_end_21} :catch_4e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_57

    :try_start_21
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Loading Properties report to insert user comment."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lorg/acra/f;->a(Ljava/io/InputStream;)V
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_40

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    sget-object v1, Lorg/acra/q;->USER_COMMENT:Lorg/acra/q;

    invoke-virtual {v0, v1, p2}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/acra/q;->USER_EMAIL:Lorg/acra/q;

    if-nez p3, :cond_39

    const-string p3, ""

    :cond_39
    invoke-virtual {v0, v1, p3}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/acra/ErrorReporter;->a(Ljava/lang/String;Lorg/acra/f;)Ljava/lang/String;

    :cond_3f
    :goto_3f
    return-void

    :catchall_40
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_45} :catch_45
    .catch Ljava/util/InvalidPropertiesFormatException; {:try_start_2b .. :try_end_45} :catch_4e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_45} :catch_57

    :catch_45
    move-exception v0

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "User comment not added: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    :catch_4e
    move-exception v0

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "User comment not added: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    :catch_57
    move-exception v0

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "User comment not added: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method

.method public static a(Landroid/text/format/Time;)V
    .registers 4
    .parameter

    .prologue
    .line 1277
    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v1, Lorg/acra/q;->USER_APP_START_DATE:Lorg/acra/q;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    .line 807
    sget-object v0, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 810
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v1

    .line 813
    invoke-interface {v1}, Lorg/acra/a/a;->j()I

    move-result v2

    .line 815
    sget-object v3, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-interface {v1}, Lorg/acra/a/a;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 817
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 819
    sget-object v2, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-interface {v1}, Lorg/acra/a/a;->m()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 820
    sget-object v3, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-interface {v1}, Lorg/acra/a/a;->k()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 822
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    const-class v5, Lorg/acra/CrashReportDialog;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 823
    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Creating Notification for "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const-string v4, "REPORT_FILE_NAME"

    invoke-virtual {v3, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    sget-object v4, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x800

    invoke-static {v4, v5, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 828
    sget-object v4, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-virtual {v6, v4, v2, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 831
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 832
    const/16 v1, 0x29a

    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 833
    return-void
.end method

.method public static a(Lorg/acra/b/e;)V
    .registers 2
    .parameter

    .prologue
    .line 1224
    sget-object v0, Lorg/acra/ErrorReporter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    return-void
.end method

.method private static a(Lorg/acra/f;)V
    .registers 7
    .parameter

    .prologue
    .line 847
    const/4 v0, 0x0

    .line 848
    sget-object v1, Lorg/acra/ErrorReporter;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/b/e;

    .line 850
    :try_start_14
    invoke-interface {v0, p0}, Lorg/acra/b/e;->a(Lorg/acra/f;)V
    :try_end_17
    .catch Lorg/acra/b/f; {:try_start_14 .. :try_end_17} :catch_1a

    .line 853
    const/4 v0, 0x1

    move v1, v0

    .line 861
    goto :goto_8

    .line 854
    :catch_1a
    move-exception v3

    .line 855
    if-nez v1, :cond_1e

    .line 856
    throw v3

    .line 858
    :cond_1e
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ReportSender of class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " failed but other senders completed their task. ACRA will not send this report again."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 863
    :cond_41
    return-void
.end method

.method private a(ZI)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1104
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->h()[Ljava/lang/String;

    move-result-object v1

    .line 1105
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1106
    if-eqz v1, :cond_2b

    .line 1109
    const/4 v0, 0x0

    :goto_a
    array-length v2, v1

    sub-int/2addr v2, p2

    if-ge v0, v2, :cond_2b

    .line 1110
    aget-object v2, v1, v0

    .line 1111
    invoke-static {v2}, Lorg/acra/ErrorReporter;->b(Ljava/lang/String;)Z

    move-result v3

    .line 1112
    if-eqz v3, :cond_18

    if-nez p1, :cond_1a

    :cond_18
    if-nez v3, :cond_28

    .line 1113
    :cond_1a
    new-instance v3, Ljava/io/File;

    sget-object v4, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1109
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1117
    :cond_2b
    return-void
.end method

.method public static b()Lorg/acra/ErrorReporter;
    .registers 1

    .prologue
    .line 340
    sget-object v0, Lorg/acra/ErrorReporter;->g:Lorg/acra/ErrorReporter;

    if-nez v0, :cond_b

    .line 341
    new-instance v0, Lorg/acra/ErrorReporter;

    invoke-direct {v0}, Lorg/acra/ErrorReporter;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->g:Lorg/acra/ErrorReporter;

    .line 343
    :cond_b
    sget-object v0, Lorg/acra/ErrorReporter;->g:Lorg/acra/ErrorReporter;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 992
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 993
    if-nez v0, :cond_1a

    .line 994
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not deleted error report : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_1a
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 1173
    sget-object v0, Lorg/acra/ErrorReporter;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "-approved"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic f()Landroid/content/Context;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .registers 6

    .prologue
    .line 324
    const-string v0, ""

    .line 325
    iget-object v1, p0, Lorg/acra/ErrorReporter;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    .line 326
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 327
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lorg/acra/ErrorReporter;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 330
    goto :goto_d

    .line 331
    :cond_44
    return-object v2
.end method

.method private h()[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 908
    sget-object v0, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 909
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-array v0, v4, [Ljava/lang/String;

    .line 928
    :cond_e
    :goto_e
    return-object v0

    .line 913
    :cond_f
    sget-object v0, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 914
    if-eqz v0, :cond_3d

    .line 915
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Looking for error files in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    new-instance v1, Lorg/acra/m;

    invoke-direct {v1, p0}, Lorg/acra/m;-><init>(Lorg/acra/ErrorReporter;)V

    .line 923
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 924
    if-nez v0, :cond_e

    new-array v0, v4, [Ljava/lang/String;

    goto :goto_e

    .line 926
    :cond_3d
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    new-array v0, v4, [Ljava/lang/String;

    goto :goto_e
.end method


# virtual methods
.method public final a()V
    .registers 8

    .prologue
    .line 245
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Mark all pending reports as approved."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->h()[Ljava/lang/String;

    move-result-object v1

    .line 249
    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_3b

    aget-object v3, v1, v0

    .line 250
    invoke-static {v3}, Lorg/acra/ErrorReporter;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 251
    new-instance v4, Ljava/io/File;

    sget-object v5, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    const-string v5, ".stacktrace"

    const-string v6, "-approved.stacktrace"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 253
    new-instance v5, Ljava/io/File;

    sget-object v6, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 249
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 256
    :cond_3b
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lorg/acra/ErrorReporter;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_22

    .line 358
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 359
    const/4 v0, 0x1

    sput-boolean v0, Lorg/acra/ErrorReporter;->c:Z

    .line 360
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 361
    sput-object p1, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    .line 363
    sget-object v0, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lorg/acra/e;->a(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->i:Ljava/lang/String;

    .line 365
    :cond_22
    return-void
.end method

.method final declared-synchronized a(Landroid/content/Context;Z)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 942
    monitor-enter p0

    :try_start_2
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "#checkAndSendReports - start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->h()[Ljava/lang/String;

    move-result-object v2

    .line 944
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 948
    array-length v3, v2

    move v1, v0

    :goto_12
    if-ge v1, v3, :cond_51

    aget-object v4, v2, v1

    .line 949
    if-eqz p2, :cond_20

    sget-object v5, Lorg/acra/ErrorReporter;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 950
    :cond_20
    const/4 v5, 0x5

    if-ge v0, v5, :cond_51

    .line 954
    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sending file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_73

    .line 959
    :try_start_37
    invoke-static {p1, v4}, Lorg/acra/ErrorReporter;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/acra/f;

    move-result-object v5

    .line 960
    invoke-static {v5}, Lorg/acra/ErrorReporter;->a(Lorg/acra/f;)V

    .line 961
    invoke-static {p1, v4}, Lorg/acra/ErrorReporter;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_73
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_41} :catch_46
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_41} :catch_5a
    .catch Lorg/acra/b/f; {:try_start_37 .. :try_end_41} :catch_76

    .line 974
    add-int/lit8 v0, v0, 0x1

    .line 948
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 962
    :catch_46
    move-exception v0

    .line 963
    :try_start_47
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to send crash reports"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    invoke-static {p1, v4}, Lorg/acra/ErrorReporter;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 976
    :cond_51
    :goto_51
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#checkAndSendReports - finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_73

    .line 977
    monitor-exit p0

    return-void

    .line 966
    :catch_5a
    move-exception v0

    .line 967
    :try_start_5b
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load crash report for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    invoke-static {p1, v4}, Lorg/acra/ErrorReporter;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_73

    goto :goto_51

    .line 942
    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0

    .line 970
    :catch_76
    move-exception v0

    .line 971
    :try_start_77
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to send crash report for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_77 .. :try_end_8b} :catchall_73

    goto :goto_51
.end method

.method final a(Lorg/acra/r;)V
    .registers 2
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lorg/acra/ErrorReporter;->j:Lorg/acra/r;

    .line 1006
    return-void
.end method

.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/acra/ErrorReporter;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void
.end method

.method public final c()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1012
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->h()[Ljava/lang/String;

    move-result-object v3

    .line 1013
    if-eqz v3, :cond_54

    array-length v0, v3

    if-lez v0, :cond_54

    .line 1014
    array-length v4, v3

    move v0, v1

    :goto_d
    if-ge v0, v4, :cond_58

    aget-object v5, v3, v0

    invoke-static {v5}, Lorg/acra/ErrorReporter;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_55

    move v0, v1

    .line 1018
    :goto_18
    iget-object v4, p0, Lorg/acra/ErrorReporter;->j:Lorg/acra/r;

    sget-object v5, Lorg/acra/r;->SILENT:Lorg/acra/r;

    if-eq v4, v5, :cond_2c

    iget-object v4, p0, Lorg/acra/ErrorReporter;->j:Lorg/acra/r;

    sget-object v5, Lorg/acra/r;->TOAST:Lorg/acra/r;

    if-eq v4, v5, :cond_2c

    iget-object v4, p0, Lorg/acra/ErrorReporter;->j:Lorg/acra/r;

    sget-object v5, Lorg/acra/r;->NOTIFICATION:Lorg/acra/r;

    if-ne v4, v5, :cond_5a

    if-eqz v0, :cond_5a

    .line 1022
    :cond_2c
    iget-object v1, p0, Lorg/acra/ErrorReporter;->j:Lorg/acra/r;

    sget-object v3, Lorg/acra/r;->TOAST:Lorg/acra/r;

    if-ne v1, v3, :cond_45

    if-nez v0, :cond_45

    .line 1025
    sget-object v0, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/a/a;->n()I

    move-result v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1028
    :cond_45
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "About to start ReportSenderWorker from #checkReportOnApplicationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    new-instance v0, Lorg/acra/n;

    invoke-direct {v0, p0}, Lorg/acra/n;-><init>(Lorg/acra/ErrorReporter;)V

    invoke-virtual {v0}, Lorg/acra/n;->start()V

    .line 1046
    :cond_54
    :goto_54
    return-void

    .line 1014
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_58
    move v0, v2

    goto :goto_18

    .line 1030
    :cond_5a
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v0

    invoke-interface {v0}, Lorg/acra/a/a;->y()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1035
    invoke-static {}, Lorg/acra/ErrorReporter;->b()Lorg/acra/ErrorReporter;

    move-result-object v0

    iget-object v3, v0, Lorg/acra/ErrorReporter;->j:Lorg/acra/r;

    sget-object v4, Lorg/acra/r;->NOTIFICATION:Lorg/acra/r;

    if-ne v3, v4, :cond_72

    :goto_6e
    invoke-direct {v0, v1, v2}, Lorg/acra/ErrorReporter;->a(ZI)V

    goto :goto_54

    :cond_72
    move v2, v1

    goto :goto_6e

    .line 1042
    :cond_74
    invoke-static {}, Lorg/acra/ErrorReporter;->b()Lorg/acra/ErrorReporter;

    if-eqz v3, :cond_9a

    array-length v0, v3

    if-lez v0, :cond_9a

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    :goto_7f
    if-ltz v0, :cond_94

    aget-object v1, v3, v0

    sget-object v2, Lorg/acra/ErrorReporter;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_91

    aget-object v0, v3, v0

    :goto_8d
    invoke-static {v0}, Lorg/acra/ErrorReporter;->a(Ljava/lang/String;)V

    goto :goto_54

    :cond_91
    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    :cond_94
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v3, v0

    goto :goto_8d

    :cond_9a
    const/4 v0, 0x0

    goto :goto_8d
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 1074
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/acra/ErrorReporter;->a(ZI)V

    .line 1075
    return-void
.end method

.method public final e()V
    .registers 4

    .prologue
    .line 1123
    sget-object v0, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    if-eqz v0, :cond_2b

    .line 1124
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACRA is disabled for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :goto_1e
    iget-object v0, p0, Lorg/acra/ErrorReporter;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2a

    .line 1129
    iget-object v0, p0, Lorg/acra/ErrorReporter;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1130
    const/4 v0, 0x0

    sput-boolean v0, Lorg/acra/ErrorReporter;->c:Z

    .line 1132
    :cond_2a
    return-void

    .line 1126
    :cond_2b
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public handleSilentException(Ljava/lang/Throwable;)Ljava/lang/Thread;
    .registers 5
    .parameter

    .prologue
    .line 787
    sget-boolean v0, Lorg/acra/ErrorReporter;->c:Z

    if-eqz v0, :cond_14

    .line 788
    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v1, Lorg/acra/q;->IS_SILENT:Lorg/acra/q;

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/acra/f;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    sget-object v0, Lorg/acra/r;->SILENT:Lorg/acra/r;

    invoke-direct {p0, p1, v0}, Lorg/acra/ErrorReporter;->a(Ljava/lang/Throwable;Lorg/acra/r;)Lorg/acra/n;

    move-result-object v0

    .line 793
    :goto_13
    return-object v0

    .line 792
    :cond_14
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA is disabled. Silent report not sent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lorg/acra/ErrorReporter;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lorg/acra/ErrorReporter;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xa

    .line 614
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACRA caught a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Building report."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    sget-object v0, Lorg/acra/ErrorReporter;->e:Lorg/acra/f;

    sget-object v1, Lorg/acra/q;->IS_SILENT:Lorg/acra/q;

    invoke-virtual {v0, v1}, Lorg/acra/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget-object v0, p0, Lorg/acra/ErrorReporter;->j:Lorg/acra/r;

    invoke-direct {p0, p2, v0}, Lorg/acra/ErrorReporter;->a(Ljava/lang/Throwable;Lorg/acra/r;)Lorg/acra/n;

    move-result-object v0

    .line 624
    iget-object v1, p0, Lorg/acra/ErrorReporter;->j:Lorg/acra/r;

    sget-object v2, Lorg/acra/r;->TOAST:Lorg/acra/r;

    if-ne v1, v2, :cond_4c

    .line 627
    const-wide/16 v1, 0xfa0

    :try_start_49
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4c} :catch_63

    .line 633
    :cond_4c
    :goto_4c
    if-eqz v0, :cond_6c

    .line 634
    :goto_4e
    invoke-virtual {v0}, Lorg/acra/n;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 638
    const-wide/16 v1, 0x64

    :try_start_56
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_4e

    .line 639
    :catch_5a
    move-exception v1

    .line 640
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 628
    :catch_63
    move-exception v1

    .line 629
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 645
    :cond_6c
    iget-object v0, p0, Lorg/acra/ErrorReporter;->j:Lorg/acra/r;

    sget-object v1, Lorg/acra/r;->SILENT:Lorg/acra/r;

    if-eq v0, v1, :cond_82

    iget-object v0, p0, Lorg/acra/ErrorReporter;->j:Lorg/acra/r;

    sget-object v1, Lorg/acra/r;->TOAST:Lorg/acra/r;

    if-ne v0, v1, :cond_88

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v0

    invoke-interface {v0}, Lorg/acra/a/a;->A()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 650
    :cond_82
    iget-object v0, p0, Lorg/acra/ErrorReporter;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 665
    :goto_87
    return-void

    .line 655
    :cond_88
    :try_start_88
    sget-object v0, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 658
    sget-object v1, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sget-object v1, Lorg/acra/ErrorReporter;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 659
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " fatal error : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c3
    .catchall {:try_start_88 .. :try_end_c3} :catchall_e1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_88 .. :try_end_c3} :catch_ce

    .line 663
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 664
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_87

    .line 660
    :catch_ce
    move-exception v0

    .line 661
    :try_start_cf
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d6
    .catchall {:try_start_cf .. :try_end_d6} :catchall_e1

    .line 663
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 664
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_87

    .line 663
    :catchall_e1
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 664
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    throw v0
.end method
