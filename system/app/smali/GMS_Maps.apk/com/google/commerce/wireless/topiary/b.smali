.class public Lcom/google/commerce/wireless/topiary/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/commerce/wireless/topiary/b;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/accounts/Account;
    .registers 2
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/commerce/wireless/topiary/b;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/accounts/Account;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 93
    const-string v0, "topiary.accounts.name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_1e

    .line 95
    invoke-static {p0}, Lcom/google/commerce/wireless/topiary/b;->b(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    .line 96
    array-length v3, v2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v3, :cond_1e

    aget-object v4, v2, v0

    .line 97
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 98
    return-object v4

    .line 96
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 103
    :cond_1e
    new-instance v0, Lcom/google/commerce/wireless/topiary/c;

    invoke-direct {v0}, Lcom/google/commerce/wireless/topiary/c;-><init>()V

    throw v0
.end method

.method public static a(Landroid/accounts/Account;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 107
    const-string v0, "topiary.accounts.name"

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/a;
    .registers 3
    .parameter

    .prologue
    .line 45
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_18

    move-object v0, p0

    .line 46
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 51
    :goto_b
    const-string v1, "com.google.commerce.wireless.topiary.account_manager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    instance-of v1, v0, Lcom/google/commerce/wireless/topiary/a;

    if-eqz v1, :cond_1d

    .line 53
    check-cast v0, Lcom/google/commerce/wireless/topiary/a;

    .line 55
    :goto_17
    return-object v0

    .line 48
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_b

    .line 55
    :cond_1d
    invoke-static {p0}, Lcom/google/commerce/wireless/topiary/d;->a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/d;

    move-result-object v0

    goto :goto_17
.end method

.method static a(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-static {p0}, Lcom/google/commerce/wireless/topiary/b;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "defaultAccount"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    return-void
.end method

.method public static b(Landroid/content/Context;)[Landroid/accounts/Account;
    .registers 2
    .parameter

    .prologue
    .line 116
    invoke-static {p0}, Lcom/google/commerce/wireless/topiary/b;->a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/commerce/wireless/topiary/a;->a()[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter

    .prologue
    .line 223
    const-string v0, "com.google.commerce.wireless.topiary.Accounts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
