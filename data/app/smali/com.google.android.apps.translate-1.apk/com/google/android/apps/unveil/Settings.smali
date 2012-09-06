.class public Lcom/google/android/apps/unveil/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;I)Z
    .registers 3
    .parameter "context"
    .parameter "keyResourceId"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/unveil/Settings;->getBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Landroid/content/Context;IZ)Z
    .registers 5
    .parameter "context"
    .parameter "keyResourceId"
    .parameter "defaultValue"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/apps/unveil/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/unveil/Settings;->r(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "context"

    .prologue
    .line 25
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static putBoolean(Landroid/content/Context;IZ)V
    .registers 5
    .parameter "context"
    .parameter "keyResourceId"
    .parameter "value"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/android/apps/unveil/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/unveil/Settings;->r(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    return-void
.end method

.method public static putInt(Landroid/content/Context;II)V
    .registers 5
    .parameter "context"
    .parameter "keyResourceId"
    .parameter "value"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/android/apps/unveil/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/unveil/Settings;->r(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method

.method private static r(Landroid/content/Context;)Landroid/content/res/Resources;
    .registers 2
    .parameter "context"

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
