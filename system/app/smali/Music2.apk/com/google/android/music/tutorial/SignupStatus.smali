.class public Lcom/google/android/music/tutorial/SignupStatus;
.super Ljava/lang/Object;
.source "SignupStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->isBackgroundDataEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/SharedPreferences;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedStatus(Landroid/content/SharedPreferences;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/google/android/music/tutorial/SignupStatus;->removeAllVerifiedAccountFromPreferences(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)[Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getAllAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/accounts/Account;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/google/android/music/tutorial/SignupStatus;->isAccountVerified(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/google/android/music/tutorial/SignupStatus;->putVerifiedAccountIntoPreferences(Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;Landroid/content/SharedPreferences;)[Landroid/accounts/Account;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedAccounts(Landroid/content/Context;Landroid/content/SharedPreferences;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private static getAccountsFromPreferences(Landroid/content/SharedPreferences;)[Landroid/accounts/Account;
    .registers 8
    .parameter "preferences"

    .prologue
    const/4 v4, 0x0

    .line 89
    const/4 v1, 0x1

    .line 92
    .local v1, i:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifiedAccountsName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifiedAccountsName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, name:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifiedAccountsType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, type:Ljava/lang/String;
    if-eqz v2, :cond_5a

    if-eqz v3, :cond_5a

    .line 98
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 102
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    :cond_5d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_64

    .line 105
    :goto_63
    return-object v4

    :cond_64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/accounts/Account;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    goto :goto_63
.end method

.method private static getAllAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .registers 4
    .parameter "context"

    .prologue
    .line 130
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 131
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 132
    .local v1, accounts:[Landroid/accounts/Account;
    return-object v1
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4
    .parameter "context"

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, mode:I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_9

    .line 65
    or-int/lit8 v0, v0, 0x4

    .line 67
    :cond_9
    const-string v1, "signup.pref"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method public static getVerifiedAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .registers 2
    .parameter "context"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedAccounts(Landroid/content/Context;Landroid/content/SharedPreferences;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private static getVerifiedAccounts(Landroid/content/Context;Landroid/content/SharedPreferences;)[Landroid/accounts/Account;
    .registers 4
    .parameter "context"
    .parameter "preferences"

    .prologue
    .line 78
    invoke-static {p1}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedStatus(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 79
    .local v0, status:I
    if-gtz v0, :cond_8

    .line 80
    const/4 v1, 0x0

    .line 84
    :goto_7
    return-object v1

    .line 81
    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 82
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getAllAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    goto :goto_7

    .line 84
    :cond_10
    invoke-static {p1}, Lcom/google/android/music/tutorial/SignupStatus;->getAccountsFromPreferences(Landroid/content/SharedPreferences;)[Landroid/accounts/Account;

    move-result-object v1

    goto :goto_7
.end method

.method private static getVerifiedStatus(Landroid/content/SharedPreferences;)I
    .registers 3
    .parameter "preferences"

    .prologue
    .line 148
    const-string v0, "status"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static hasVerifiedAccounts(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 157
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/tutorial/SignupStatus;->hasVerifiedAccounts(Landroid/content/SharedPreferences;)Z

    move-result v0

    return v0
.end method

.method private static hasVerifiedAccounts(Landroid/content/SharedPreferences;)Z
    .registers 3
    .parameter "preferences"

    .prologue
    const/4 v0, 0x1

    .line 161
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedStatus(Landroid/content/SharedPreferences;)I

    move-result v1

    if-lt v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static isAccountVerified(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/accounts/Account;)Z
    .registers 10
    .parameter "context"
    .parameter "preferences"
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 137
    invoke-static {p0, p1}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedAccounts(Landroid/content/Context;Landroid/content/SharedPreferences;)[Landroid/accounts/Account;

    move-result-object v4

    .line 138
    .local v4, verifiedAccounts:[Landroid/accounts/Account;
    if-nez v4, :cond_8

    .line 144
    :cond_7
    :goto_7
    return v5

    .line 139
    :cond_8
    move-object v0, v4

    .local v0, arr$:[Landroid/accounts/Account;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_b
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 140
    .local v3, verifiedAccount:Landroid/accounts/Account;
    invoke-virtual {p2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 141
    const/4 v5, 0x1

    goto :goto_7

    .line 139
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private static isBackgroundDataEnabled(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 185
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 187
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_f

    .line 188
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    .line 190
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public static launchVerificationCheck(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 165
    const/4 v0, 0x1

    invoke-static {p0, v0, v1, v1}, Lcom/google/android/music/tutorial/SignupStatus;->launchVerificationCheck(Landroid/content/Context;ZZZ)V

    .line 166
    return-void
.end method

.method public static launchVerificationCheck(Landroid/content/Context;ZZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    const-string v1, "com.google.android.music.tutorial.LAUNCH_TUTORIAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const-string v1, "com.google.android.music.tutorial.CLEAR_HOLDOFF"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const-string v1, "com.google.android.music.tutorial.CLEAR_EXISTING_ACCOUNTS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    return-void
.end method

.method private static putVerifiedAccountIntoPreferences(Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V
    .registers 7
    .parameter "editor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    const/4 v1, 0x1

    .line 111
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 112
    .local v0, account:Landroid/accounts/Account;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifiedAccountsName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifiedAccountsType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 116
    .end local v0           #account:Landroid/accounts/Account;
    :cond_44
    return-void
.end method

.method private static removeAllVerifiedAccountFromPreferences(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V
    .registers 6
    .parameter "editor"
    .parameter "sharedPreferences"

    .prologue
    .line 120
    const/4 v1, 0x1

    .line 122
    .local v1, i:I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifiedAccountsName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, currentAccountKey:Ljava/lang/String;
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 124
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_20
    return-void
.end method
