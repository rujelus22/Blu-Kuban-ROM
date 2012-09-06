.class public final Lcom/google/android/apps/reader/preference/LocalPreferences;
.super Ljava/lang/Object;
.source "LocalPreferences.java"


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account_v2"

.field public static final HOME_EXPANDED:Ljava/lang/String; = "home_expanded"

.field public static final PLUGINS_ENABLED:Ljava/lang/String; = "plugins_enabled"

.field public static final SHARE_NOTE:Ljava/lang/String; = "share_note"

.field public static final SHOW_ALL_ACCOUNTS:Ljava/lang/String; = "show_all_accounts"

.field public static final SHOW_SWIPE_HINT:Ljava/lang/String; = "show_swipe_hint"

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final TERMS_ACCEPTED:Ljava/lang/String; = "terms_accepted"

.field public static final TEXT_SIZE:Ljava/lang/String; = "text_size"

.field public static final USE_HTTPS:Ljava/lang/String; = "use_https"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VOLUME_KEY_NAVIGATION:Ljava/lang/String; = "volume_key_navigation"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method public static clearAccount(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 176
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    const-string v1, "account_v2"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    return-void
.end method

.method public static edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .registers 2
    .parameter "context"

    .prologue
    .line 118
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "context"

    .prologue
    .line 111
    if-nez p0, :cond_8

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 114
    :cond_8
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getAccount(Landroid/content/Context;)Lcom/google/android/accounts/Account;
    .registers 3
    .parameter "context"

    .prologue
    .line 131
    if-nez p0, :cond_8

    .line 132
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 134
    :cond_8
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->getAccount(Landroid/content/SharedPreferences;)Lcom/google/android/accounts/Account;

    move-result-object v1

    return-object v1
.end method

.method public static getAccount(Landroid/content/SharedPreferences;)Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "preferences"

    .prologue
    const/4 v2, 0x0

    .line 122
    const-string v1, "account_v2"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, accountName:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 124
    new-instance v1, Lcom/google/android/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, v0, v2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_10
    return-object v1

    :cond_11
    move-object v1, v2

    goto :goto_10
.end method

.method public static getPluginsEnabled(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 139
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->getPluginsEnabled(Landroid/content/SharedPreferences;)Z

    move-result v1

    return v1
.end method

.method public static getPluginsEnabled(Landroid/content/SharedPreferences;)Z
    .registers 3
    .parameter "preferences"

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, defaultValue:Z
    const-string v1, "plugins_enabled"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getShowAllAccounts(Landroid/content/SharedPreferences;)Z
    .registers 3
    .parameter "preferences"

    .prologue
    .line 155
    const-string v0, "show_all_accounts"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getTextSize(Landroid/content/Context;)Landroid/webkit/WebSettings$TextSize;
    .registers 5
    .parameter "context"

    .prologue
    .line 183
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 184
    .local v1, preferences:Landroid/content/SharedPreferences;
    sget-object v3, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v3}, Landroid/webkit/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, defaultValue:Ljava/lang/String;
    const-string v3, "text_size"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v3

    return-object v3
.end method

.method public static setAccount(Landroid/content/Context;Lcom/google/android/accounts/Account;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 163
    if-nez p0, :cond_8

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 166
    :cond_8
    if-nez p1, :cond_10

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 169
    :cond_10
    invoke-static {p0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 171
    const-string v1, "account_v2"

    iget-object v2, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    return-void
.end method

.method public static setShowAllAccounts(Landroid/content/SharedPreferences;Z)Z
    .registers 4
    .parameter "preferences"
    .parameter "value"

    .prologue
    .line 159
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_all_accounts"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
