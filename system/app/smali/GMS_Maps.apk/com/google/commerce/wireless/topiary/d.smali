.class public Lcom/google/commerce/wireless/topiary/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/commerce/wireless/topiary/a;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lcom/google/commerce/wireless/topiary/d;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/accounts/AccountManager;

.field private final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/commerce/wireless/topiary/d;->a:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/google/commerce/wireless/topiary/d;->b:Lcom/google/commerce/wireless/topiary/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/d;->c:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/d;->d:Landroid/accounts/AccountManager;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/d;->e:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/d;
    .registers 3
    .parameter

    .prologue
    .line 47
    sget-object v1, Lcom/google/commerce/wireless/topiary/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_3
    sget-object v0, Lcom/google/commerce/wireless/topiary/d;->b:Lcom/google/commerce/wireless/topiary/d;

    if-nez v0, :cond_e

    .line 49
    new-instance v0, Lcom/google/commerce/wireless/topiary/d;

    invoke-direct {v0, p0}, Lcom/google/commerce/wireless/topiary/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/d;->b:Lcom/google/commerce/wireless/topiary/d;

    .line 51
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 52
    sget-object v0, Lcom/google/commerce/wireless/topiary/d;->b:Lcom/google/commerce/wireless/topiary/d;

    return-object v0

    .line 51
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method static synthetic a(Lcom/google/commerce/wireless/topiary/d;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/d;->e:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/accounts/Account;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/d;->a()[Landroid/accounts/Account;

    move-result-object v2

    move v0, v1

    .line 173
    :goto_6
    array-length v3, v2

    if-ge v0, v3, :cond_12

    .line 174
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 175
    const/4 v1, 0x1

    .line 178
    :cond_12
    return v1

    .line 173
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private c(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 161
    if-eqz p1, :cond_a

    .line 163
    :try_start_3
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/d;->d:Landroid/accounts/AccountManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_b

    move-result-object v0

    .line 168
    :cond_a
    :goto_a
    return-object v0

    .line 164
    :catch_b
    move-exception v1

    goto :goto_a
.end method


# virtual methods
.method public a(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/google/commerce/wireless/topiary/d;->a(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The specified account has been removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/d;->d:Landroid/accounts/AccountManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 71
    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 72
    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_2e
    return-object v0

    .line 75
    :cond_2f
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 76
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/commerce/wireless/topiary/d;->a(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/Intent;)V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/google/commerce/wireless/topiary/d;->c(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_45} :catch_47

    move-result-object v0

    goto :goto_2e

    .line 80
    :catch_47
    move-exception v0

    .line 81
    const-string v1, "AndroidAccountManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " authentication token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_66
    move-object v0, v6

    .line 83
    goto :goto_2e
.end method

.method protected a(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 132
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/d;->e:Ljava/util/Map;

    monitor-enter v2

    .line 133
    :try_start_4
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/d;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 134
    if-nez v0, :cond_64

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/d;->e:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v1, 0x1

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 139
    :goto_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_55

    .line 141
    if-eqz v0, :cond_45

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/d;->c:Landroid/content/Context;

    const-class v3, Lcom/google/commerce/wireless/topiary/AndroidAccountManagerActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "intent"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "topiary.EXTRA_TOKEN_TYPE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/d;->c:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/commerce/wireless/topiary/b;->a(Landroid/accounts/Account;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    :cond_45
    const-string v0, "AndroidAccountManager"

    const-string v2, "Waiting for user interaction"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :try_start_4c
    monitor-enter v1
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4d} :catch_5b

    .line 153
    const-wide/32 v2, 0xea60

    :try_start_50
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 154
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_58

    .line 158
    :goto_54
    return-void

    .line 139
    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0

    .line 154
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw v0
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_5b} :catch_5b

    .line 155
    :catch_5b
    move-exception v0

    .line 156
    const-string v0, "AndroidAccountManager"

    const-string v1, "Interrupted while waiting for user interaction"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_64
    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_1a
.end method

.method a(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 109
    new-instance v0, Lcom/google/commerce/wireless/topiary/e;

    invoke-direct {v0, p0, p1}, Lcom/google/commerce/wireless/topiary/e;-><init>(Lcom/google/commerce/wireless/topiary/d;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/e;->b()V

    .line 124
    return-void
.end method

.method public a()[Landroid/accounts/Account;
    .registers 8

    .prologue
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/d;->d:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_23

    aget-object v4, v2, v0

    .line 96
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v6, "@youtube.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 97
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 101
    :cond_23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/accounts/Account;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    return-object v0
.end method

.method public b(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 88
    const-string v0, "AndroidAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalidating token for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/d;->d:Landroid/accounts/AccountManager;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
