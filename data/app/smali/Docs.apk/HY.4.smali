.class public LHY;
.super Ljava/lang/Object;
.source "AccountAccessorImpl.java"

# interfaces
.implements LHW;


# instance fields
.field private final a:LIG;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LanD;LIG;)V
    .registers 3
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "LIG;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, LHY;->a:LanD;

    .line 80
    iput-object p2, p0, LHY;->a:LIG;

    .line 81
    return-void
.end method

.method public static a([Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 156
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_12

    .line 157
    aget-object v1, p0, v0

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 161
    :goto_e
    return v0

    .line 156
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_12
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static a(LHW;)Landroid/accounts/Account;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-interface {p0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v3

    .line 51
    array-length v4, v3

    move v1, v2

    :goto_7
    if-ge v1, v4, :cond_18

    aget-object v0, v3, v1

    .line 52
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, LXl;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 57
    :goto_13
    return-object v0

    .line 51
    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 57
    :cond_18
    array-length v0, v3

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_13

    :cond_1d
    aget-object v0, v3, v2

    goto :goto_13
.end method

.method static synthetic a(LHY;Landroid/accounts/AccountManagerFuture;LHX;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, LHY;->a(Landroid/accounts/AccountManagerFuture;LHX;)V

    return-void
.end method

.method private a(Landroid/accounts/AccountManagerFuture;LHX;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "LHX;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 181
    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 182
    :cond_9
    if-eqz v0, :cond_31

    .line 183
    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    if-eqz v0, :cond_31

    .line 185
    const-string v1, "AccountAccessorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-interface {p2, v0}, LHX;->a(Ljava/lang/String;)V

    .line 205
    :goto_30
    return-void

    .line 192
    :cond_31
    const-string v0, "AccountAccessorImpl"

    const-string v1, "addAccount failed with unknown reason"

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    invoke-interface {p2, v0}, LHX;->a(Ljava/lang/Exception;)V
    :try_end_3c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_3c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3c} :catch_5e
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3c} :catch_7f

    goto :goto_30

    .line 194
    :catch_3d
    move-exception v0

    .line 195
    const-string v1, "AccountAccessorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-interface {p2, v0}, LHX;->a(Ljava/lang/Exception;)V

    goto :goto_30

    .line 197
    :catch_5e
    move-exception v0

    .line 198
    const-string v1, "AccountAccessorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-interface {p2, v0}, LHX;->a(Ljava/lang/Exception;)V

    goto :goto_30

    .line 200
    :catch_7f
    move-exception v0

    .line 202
    const-string v1, "AccountAccessorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount cancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-interface {p2}, LHX;->a()V

    goto :goto_30
.end method

.method public static b(LHW;)Landroid/accounts/Account;
    .registers 3
    .parameter

    .prologue
    .line 65
    invoke-interface {p0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v0

    .line 66
    array-length v1, v0

    if-nez v1, :cond_9

    .line 67
    const/4 v0, 0x0

    .line 71
    :goto_8
    return-object v0

    :cond_9
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_8
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, LHY;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "GoogleDriveSharedPreferences"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    const-string v3, "AccountName"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-nez v0, :cond_1d

    .line 148
    :goto_1c
    return-object v1

    .line 138
    :cond_1d
    invoke-virtual {p0}, LHY;->a()[Landroid/accounts/Account;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_23
    if-ge v3, v5, :cond_30

    aget-object v6, v4, v3

    .line 139
    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 140
    const/4 v2, 0x1

    .line 144
    :cond_30
    if-nez v2, :cond_33

    move-object v0, v1

    :cond_33
    move-object v1, v0

    .line 148
    goto :goto_1c

    .line 138
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_23
.end method

.method public a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, LHY;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GoogleDriveSharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    const-string v1, "AccountName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/app/Activity;LHX;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 167
    new-instance v6, LHZ;

    invoke-direct {v6, p0, p3}, LHZ;-><init>(LHY;LHX;)V

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 176
    return-void
.end method

.method public a(LkG;)V
    .registers 4
    .parameter

    .prologue
    .line 85
    invoke-static {p0, p1}, LXl;->a(LHW;LkG;)V

    .line 88
    :try_start_3
    iget-object v0, p0, LHY;->a:LIG;

    invoke-virtual {p1}, LkG;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LIG;->a(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_c} :catch_f
    .catch LJi; {:try_start_3 .. :try_end_c} :catch_d

    .line 94
    :goto_c
    return-void

    .line 91
    :catch_d
    move-exception v0

    goto :goto_c

    .line 89
    :catch_f
    move-exception v0

    goto :goto_c
.end method

.method public a(LkG;)Z
    .registers 4
    .parameter

    .prologue
    .line 98
    invoke-virtual {p1}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, LXl;->a(LHW;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 100
    const-string v1, "com.google.android.apps.docs"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a()[Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, LHY;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, LXl;->a(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method
