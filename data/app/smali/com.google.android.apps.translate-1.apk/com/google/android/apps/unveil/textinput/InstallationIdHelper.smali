.class public Lcom/google/android/apps/unveil/textinput/InstallationIdHelper;
.super Ljava/lang/Object;
.source "InstallationIdHelper.java"


# static fields
.field private static final NO_PREVIOUS_VERSION:I = -0x1

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/InstallationIdHelper;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstallationId(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 30
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 32
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-static {p0, v1}, Lcom/google/android/apps/unveil/textinput/InstallationIdHelper;->getPreviousVersion(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v2

    .line 34
    .local v2, previousVersion:I
    const/4 v3, 0x0

    .line 36
    .local v3, versionCode:I
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v3, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_1b} :catch_25

    .line 42
    :goto_1b
    if-eq v3, v2, :cond_20

    .line 43
    invoke-static {p0, v1, v3}, Lcom/google/android/apps/unveil/textinput/InstallationIdHelper;->resetInstallationId(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    .line 46
    :cond_20
    invoke-static {p0, v1}, Lcom/google/android/apps/unveil/textinput/InstallationIdHelper;->getInstallationId(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 38
    :catch_25
    move-exception v0

    .line 39
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/google/android/apps/unveil/textinput/InstallationIdHelper;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Unable to retrieve version code from manifest"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method private static getInstallationId(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "preferences"

    .prologue
    .line 57
    sget v1, Lcom/google/android/apps/unveil/textinput/R$string;->text_input_installation_id_key:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, installationId:Ljava/lang/String;
    sget-object v1, Lcom/google/android/apps/unveil/textinput/InstallationIdHelper;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Installation id: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-object v0
.end method

.method private static getPreviousVersion(Landroid/content/Context;Landroid/content/SharedPreferences;)I
    .registers 4
    .parameter "context"
    .parameter "preferences"

    .prologue
    .line 51
    sget v0, Lcom/google/android/apps/unveil/textinput/R$string;->text_input_previous_version_key:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static resetInstallationId(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .registers 8
    .parameter "context"
    .parameter "preferences"
    .parameter "versionCode"

    .prologue
    .line 65
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, installationId:Ljava/lang/String;
    sget-object v1, Lcom/google/android/apps/unveil/textinput/InstallationIdHelper;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Setting installationId to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget v2, Lcom/google/android/apps/unveil/textinput/R$string;->text_input_installation_id_key:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget v2, Lcom/google/android/apps/unveil/textinput/R$string;->text_input_previous_version_key:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method
