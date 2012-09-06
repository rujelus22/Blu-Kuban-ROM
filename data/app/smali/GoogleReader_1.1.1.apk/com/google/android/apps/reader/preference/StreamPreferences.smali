.class public final Lcom/google/android/apps/reader/preference/StreamPreferences;
.super Ljava/lang/Object;
.source "StreamPreferences.java"


# static fields
.field private static final IS_EXPANDED:Ljava/lang/String; = "is-expanded"

.field private static final RANKING:Ljava/lang/String; = "ranking"

.field private static final SUBSCRIPTION_ORDERING:Ljava/lang/String; = "subscription-ordering"

.field private static final sPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    invoke-static {}, Lcom/google/android/apps/reader/preference/StreamPreferences;->newMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/preference/StreamPreferences;->sPreferences:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultRanking(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "streamId"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isPopular(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isSplice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 74
    :cond_c
    const-string v0, "auto"

    .line 76
    :goto_e
    return-object v0

    :cond_f
    const-string v0, "newest"

    goto :goto_e
.end method

.method public static getRanking(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "streamId"

    .prologue
    .line 81
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/reader/preference/StreamPreferences;->getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-static {v0, p2}, Lcom/google/android/apps/reader/preference/StreamPreferences;->getRanking(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRanking(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "preferences"
    .parameter "streamId"

    .prologue
    .line 86
    invoke-static {p1}, Lcom/google/android/apps/reader/preference/StreamPreferences;->getDefaultRanking(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, defaultRanking:Ljava/lang/String;
    const-string v1, "ranking"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    sget-object v1, Lcom/google/android/apps/reader/preference/StreamPreferences;->sPreferences:Ljava/util/Map;

    monitor-enter v1

    .line 56
    :try_start_3
    invoke-static {p1, p2}, Lcom/google/android/apps/reader/provider/ReaderContract$Preferences;->streamContentUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 57
    sget-object v0, Lcom/google/android/apps/reader/preference/StreamPreferences;->sPreferences:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 58
    if-nez v0, :cond_24

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    new-instance v3, Lcom/google/android/apps/reader/preference/ProviderPreferences;

    invoke-direct {v3, v0, v2}, Lcom/google/android/apps/reader/preference/ProviderPreferences;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 66
    sget-object v0, Lcom/google/android/apps/reader/preference/StreamPreferences;->sPreferences:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 68
    :cond_24
    monitor-exit v1

    return-object v0

    .line 69
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public static getSubscriptionOrdering(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 3
    .parameter "preferences"

    .prologue
    .line 95
    const-string v0, "subscription-ordering"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isExpanded(Landroid/content/SharedPreferences;)Z
    .registers 3
    .parameter "preferences"

    .prologue
    .line 91
    const-string v0, "is-expanded"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static newMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static setExpanded(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;Z)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/reader/preference/StreamPreferences;->getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    const-string v1, "is-expanded"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static setRanking(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/reader/preference/StreamPreferences;->getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    const-string v1, "ranking"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
