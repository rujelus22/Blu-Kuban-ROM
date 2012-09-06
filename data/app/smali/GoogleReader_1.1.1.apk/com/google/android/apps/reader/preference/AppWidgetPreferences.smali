.class public Lcom/google/android/apps/reader/preference/AppWidgetPreferences;
.super Ljava/lang/Object;
.source "AppWidgetPreferences.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "com.google.android.apps.reader_appwidget_preferences"

.field private static final PROPERTY_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final PROPERTY_LABEL:Ljava/lang/String; = "label"

.field private static final PROPERTY_STREAM_ID:Ljava/lang/String; = "stream_id"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static configure(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "accountName"
    .parameter "streamId"
    .parameter "label"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "account_name"

    invoke-static {v0, p1, v1, p2}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->putStringProperty(Landroid/content/SharedPreferences$Editor;ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "stream_id"

    invoke-static {v0, p1, v1, p3}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->putStringProperty(Landroid/content/SharedPreferences$Editor;ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "label"

    invoke-static {v0, p1, v1, p4}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->putStringProperty(Landroid/content/SharedPreferences$Editor;ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method private static edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .parameter "context"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    return-object v1
.end method

.method private static get(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter "context"

    .prologue
    .line 46
    const-string v0, "com.google.android.apps.reader_appwidget_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getAccount(Landroid/content/Context;I)Lcom/google/android/accounts/Account;
    .registers 5
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 65
    const-string v1, "account_name"

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->getStringProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, accountName:Ljava/lang/String;
    if-eqz v0, :cond_10

    new-instance v1, Lcom/google/android/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, v0, v2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static getLabel(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 77
    const-string v0, "label"

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->getStringProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 73
    const-string v0, "stream_id"

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->getStringProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStringProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "property"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-static {p1, p2}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final key(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "appWidgetId"
    .parameter "property"

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static putStringProperty(Landroid/content/SharedPreferences$Editor;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {p1, p2}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    return-void
.end method
