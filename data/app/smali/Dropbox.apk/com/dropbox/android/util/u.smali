.class public Lcom/dropbox/android/util/u;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/android/util/u;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/u;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1
    .parameter

    .prologue
    .line 28
    invoke-static {p0}, Lcom/dropbox/android/util/u;->b(Landroid/content/Context;)V

    .line 29
    invoke-static {p0}, Lcom/dropbox/android/util/u;->c(Landroid/content/Context;)V

    .line 30
    invoke-static {p0}, Lcom/dropbox/android/util/aI;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .registers 14
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 42
    new-instance v2, Ldbxyzptlk/j/c;

    const-string v0, "DropboxAccountPrefs"

    invoke-direct {v2, p0, v0}, Ldbxyzptlk/j/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    const-string v0, "ACCESS_KEY"

    invoke-virtual {v2, v0}, Ldbxyzptlk/j/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "ACCESS_SECRET"

    invoke-virtual {v2, v0}, Ldbxyzptlk/j/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 44
    sget-object v0, Lcom/dropbox/android/util/u;->a:Ljava/lang/String;

    const-string v3, "Migrating Credentials"

    invoke-static {v0, v3}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v0, "ACCESS_KEY"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ldbxyzptlk/j/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v3, "ACCESS_SECRET"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ldbxyzptlk/j/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    const-string v4, "UID"

    invoke-virtual {v2, v4, v11, v12}, Ldbxyzptlk/j/c;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 51
    const-string v6, "EMAIL"

    const v7, 0x7f09000b

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ldbxyzptlk/j/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    new-instance v7, Landroid/accounts/Account;

    const-string v8, "com.dropbox.android.account"

    invoke-direct {v7, v6, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string v8, "KEY"

    invoke-virtual {v6, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "SECRET"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "USER_ID"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v7, v1, v6}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 63
    invoke-virtual {v2}, Ldbxyzptlk/j/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "ACCESS_KEY"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "ACCESS_SECRET"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    :cond_7f
    const-string v0, "USE_LOCK_CODE"

    .line 69
    const-string v0, "LOCK_CODE"

    .line 70
    const-string v0, "LOCK_CODE_ERASE"

    .line 71
    const-string v0, "LOCK_CODE_LOCKED_UNTIL"

    .line 72
    const-string v0, "USE_LOCK_CODE"

    invoke-virtual {v2, v0}, Ldbxyzptlk/j/c;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 73
    const-string v0, "USE_LOCK_CODE"

    invoke-virtual {v2, v0, v9}, Ldbxyzptlk/j/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 75
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 76
    const-string v0, "com.dropbox.android.account"

    invoke-virtual {v3, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 77
    array-length v4, v0

    if-lt v4, v10, :cond_104

    .line 78
    array-length v4, v0

    if-eq v4, v10, :cond_ae

    .line 79
    sget-object v4, Lcom/dropbox/android/util/u;->a:Ljava/lang/String;

    const-string v5, "More than one Dropbox account found in AccountManager during migration"

    invoke-static {v4, v5}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_ae
    aget-object v0, v0, v9

    .line 83
    :goto_b0
    if-eqz v0, :cond_e4

    .line 84
    const-string v4, "USE_LOCK_CODE"

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v4, "LOCK_CODE"

    const-string v5, "LOCK_CODE"

    invoke-virtual {v2, v5, v1}, Ldbxyzptlk/j/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v4, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "LOCK_CODE_ERASE"

    const-string v4, "LOCK_CODE_ERASE"

    invoke-virtual {v2, v4, v9}, Ldbxyzptlk/j/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "LOCK_CODE_LOCKED_UNTIL"

    const-string v4, "LOCK_CODE_LOCKED_UNTIL"

    invoke-virtual {v2, v4, v11, v12}, Ldbxyzptlk/j/c;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_e4
    invoke-virtual {v2}, Ldbxyzptlk/j/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "USE_LOCK_CODE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCK_CODE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCK_CODE_ERASE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LOCK_CODE_LOCKED_UNTIL"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    :cond_103
    return-void

    :cond_104
    move-object v0, v1

    goto :goto_b0
.end method

.method private static c(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 96
    const-string v2, "com.dropbox.android.account"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 97
    array-length v3, v2

    move v0, v1

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 100
    const-string v5, "com.dropbox.android.Dropbox"

    invoke-static {v4, v5, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 102
    :cond_19
    return-void
.end method
