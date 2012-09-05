.class public Lcom/google/android/finsky/utils/FinskyPreferences;
.super Ljava/lang/Object;
.source "FinskyPreferences.java"


# static fields
.field public static final acceptedTosToken:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final currentAccount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final purchaseLock:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

.field public static final versionCode:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final viewedFirstRunDialog:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 20
    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "finsky"

    invoke-direct {v0, v2, v4}, Lcom/google/android/finsky/config/PreferenceFile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    .line 22
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "last_version_code"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->versionCode:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 25
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "content-filter-level"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 28
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v3, "account"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->currentAccount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 31
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "pin_code"

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 34
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "purchase-lock"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->purchaseLock:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 39
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "viewedFirstRun"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->viewedFirstRunDialog:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    .line 45
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "last-tos-token"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->prefixPreference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedTosToken:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentPasscode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, result:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 65
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/utils/FinskyPreferences;->getPreferencesFile()Lcom/google/android/finsky/config/PreferenceFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyPreferences;->migrateOldPasscodes(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_1e
    return-object v0
.end method

.method public static getPreferencesFile()Lcom/google/android/finsky/config/PreferenceFile;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    return-object v0
.end method

.method public static migrateOldPasscodes(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "settings"

    .prologue
    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, result:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v3

    .line 86
    .local v3, listOfAccounts:[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 87
    .local v4, passcodeToPromote:Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2c

    .line 89
    const/4 v6, 0x0

    aget-object v6, v3, v6

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 90
    .local v0, accountName:Ljava/lang/String;
    sget-object v6, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/google/android/finsky/utils/Utils;->getPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 95
    sget-object v6, Lcom/google/android/finsky/utils/VendingPreferences;->PIN_CODE:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #passcodeToPromote:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 100
    .end local v0           #accountName:Ljava/lang/String;
    .restart local v4       #passcodeToPromote:Ljava/lang/String;
    :cond_2c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 101
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    sget-object v7, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    move-object v5, v4

    .line 106
    :cond_44
    sget-object v6, Lcom/google/android/finsky/utils/VendingPreferences;->PIN_CODE:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    .line 107
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 108
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    array-length v6, v3

    add-int/lit8 v1, v6, -0x1

    .local v1, accountNum:I
    :goto_50
    if-ltz v1, :cond_66

    .line 109
    aget-object v6, v3, v1

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 110
    .restart local v0       #accountName:Ljava/lang/String;
    sget-object v6, Lcom/google/android/finsky/utils/FinskyPreferences;->purchasePin:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/google/android/finsky/utils/Utils;->getPreferenceKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    add-int/lit8 v1, v1, -0x1

    goto :goto_50

    .line 112
    .end local v0           #accountName:Ljava/lang/String;
    :cond_66
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-object v5
.end method
