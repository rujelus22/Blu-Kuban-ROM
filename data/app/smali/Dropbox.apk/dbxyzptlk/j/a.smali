.class public Ldbxyzptlk/j/a;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ldbxyzptlk/j/a;


# instance fields
.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:J

.field private h:Ldbxyzptlk/o/k;

.field private final i:Landroid/accounts/AccountManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Ldbxyzptlk/j/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/j/a;->a:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Ldbxyzptlk/j/a;->b:Ldbxyzptlk/j/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v0, p0, Ldbxyzptlk/j/a;->c:Z

    .line 46
    iput-boolean v0, p0, Ldbxyzptlk/j/a;->d:Z

    .line 48
    iput-boolean v0, p0, Ldbxyzptlk/j/a;->f:Z

    .line 56
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/j/a;->i:Landroid/accounts/AccountManager;

    .line 57
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    invoke-virtual {p0}, Ldbxyzptlk/j/a;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldbxyzptlk/h/b;->a(J)V

    .line 58
    return-void
.end method

.method public static a()Ldbxyzptlk/j/a;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Ldbxyzptlk/j/a;->b:Ldbxyzptlk/j/a;

    if-nez v0, :cond_a

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 72
    :cond_a
    sget-object v0, Ldbxyzptlk/j/a;->b:Ldbxyzptlk/j/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    sget-object v0, Ldbxyzptlk/j/a;->b:Ldbxyzptlk/j/a;

    if-nez v0, :cond_c

    .line 62
    new-instance v0, Ldbxyzptlk/j/a;

    invoke-direct {v0, p0}, Ldbxyzptlk/j/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldbxyzptlk/j/a;->b:Ldbxyzptlk/j/a;

    .line 66
    return-void

    .line 64
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Ldbxyzptlk/j/a;->i:Landroid/accounts/AccountManager;

    invoke-virtual {p0}, Ldbxyzptlk/j/a;->k()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public static b(Landroid/content/Context;)Ldbxyzptlk/j/a;
    .registers 2
    .parameter

    .prologue
    .line 76
    sget-object v0, Ldbxyzptlk/j/a;->b:Ldbxyzptlk/j/a;

    if-nez v0, :cond_a

    .line 78
    new-instance v0, Ldbxyzptlk/j/a;

    invoke-direct {v0, p0}, Ldbxyzptlk/j/a;-><init>(Landroid/content/Context;)V

    .line 80
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Ldbxyzptlk/j/a;->b:Ldbxyzptlk/j/a;

    goto :goto_9
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 249
    invoke-virtual {p0}, Ldbxyzptlk/j/a;->k()Landroid/accounts/Account;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_d

    .line 251
    iget-object v1, p0, Ldbxyzptlk/j/a;->i:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, p1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private declared-synchronized l()V
    .registers 3

    .prologue
    .line 218
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ldbxyzptlk/j/a;->c:Z

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldbxyzptlk/j/a;->d:Z

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/j/a;->e:Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldbxyzptlk/j/a;->f:Z

    .line 222
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldbxyzptlk/j/a;->g:J

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/j/a;->h:Ldbxyzptlk/o/k;
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_16

    .line 224
    monitor-exit p0

    return-void

    .line 218
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .registers 4

    .prologue
    .line 263
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ldbxyzptlk/j/a;->c:Z

    if-nez v0, :cond_4b

    .line 265
    const-string v0, "KEY"

    invoke-direct {p0, v0}, Ldbxyzptlk/j/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string v1, "SECRET"

    invoke-direct {p0, v1}, Ldbxyzptlk/j/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    if-eqz v0, :cond_1c

    if-eqz v1, :cond_1c

    .line 268
    new-instance v2, Ldbxyzptlk/o/k;

    invoke-direct {v2, v0, v1}, Ldbxyzptlk/o/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ldbxyzptlk/j/a;->h:Ldbxyzptlk/o/k;

    .line 271
    :cond_1c
    const-string v0, "USE_LOCK_CODE"

    invoke-direct {p0, v0}, Ldbxyzptlk/j/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ldbxyzptlk/j/a;->d:Z

    .line 272
    const-string v0, "LOCK_CODE"

    invoke-direct {p0, v0}, Ldbxyzptlk/j/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/j/a;->e:Ljava/lang/String;

    .line 273
    const-string v0, "LOCK_CODE_ERASE"

    invoke-direct {p0, v0}, Ldbxyzptlk/j/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ldbxyzptlk/j/a;->f:Z
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_53

    .line 275
    :try_start_3c
    const-string v0, "LOCK_CODE_LOCKED_UNTIL"

    invoke-direct {p0, v0}, Ldbxyzptlk/j/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/j/a;->g:J
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_53
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_48} :catch_4d

    .line 281
    :goto_48
    const/4 v0, 0x1

    :try_start_49
    iput-boolean v0, p0, Ldbxyzptlk/j/a;->c:Z
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_53

    .line 283
    :cond_4b
    monitor-exit p0

    return-void

    .line 277
    :catch_4d
    move-exception v0

    .line 278
    const-wide/16 v0, 0x0

    :try_start_50
    iput-wide v0, p0, Ldbxyzptlk/j/a;->g:J
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_53

    goto :goto_48

    .line 263
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 113
    const-string v0, "ANALYTICS_SEQUENCE_NUMBER"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ldbxyzptlk/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public final a(J)V
    .registers 5
    .parameter

    .prologue
    .line 153
    iput-wide p1, p0, Ldbxyzptlk/j/a;->g:J

    .line 154
    const-string v0, "LOCK_CODE_LOCKED_UNTIL"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ldbxyzptlk/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 94
    const-string v0, "ANALYTICS_SERIES_UUID"

    invoke-direct {p0, v0, p1}, Ldbxyzptlk/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;JLdbxyzptlk/o/k;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ldbxyzptlk/j/a;->k()Landroid/accounts/Account;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Ldbxyzptlk/j/a;->h()J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-nez v1, :cond_17

    if-eqz v0, :cond_17

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 173
    :cond_17
    invoke-virtual {p0}, Ldbxyzptlk/j/a;->i()V

    .line 175
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.dropbox.android.account"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 177
    const-string v2, "KEY"

    iget-object v3, p4, Ldbxyzptlk/o/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v2, "SECRET"

    iget-object v3, p4, Ldbxyzptlk/o/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v2, "USER_ID"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Ldbxyzptlk/j/a;->i:Landroid/accounts/AccountManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 184
    invoke-virtual {p0}, Ldbxyzptlk/j/a;->k()Landroid/accounts/Account;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_4f

    .line 186
    const-string v1, "com.dropbox.android.Dropbox"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    .line 189
    :cond_4f
    monitor-exit p0

    return-void

    .line 170
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 122
    iput-boolean p1, p0, Ldbxyzptlk/j/a;->d:Z

    .line 123
    const-string v0, "USE_LOCK_CODE"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ldbxyzptlk/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    const-string v0, "ANALYTICS_SERIES_UUID"

    invoke-direct {p0, v0}, Ldbxyzptlk/j/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Ldbxyzptlk/j/a;->e:Ljava/lang/String;

    .line 134
    const-string v0, "LOCK_CODE"

    invoke-direct {p0, v0, p1}, Ldbxyzptlk/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public final b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 143
    iput-boolean p1, p0, Ldbxyzptlk/j/a;->f:Z

    .line 144
    const-string v0, "LOCK_CODE_ERASE"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ldbxyzptlk/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 101
    const-string v0, "ANALYTICS_SEQUENCE_NUMBER"

    invoke-direct {p0, v0}, Ldbxyzptlk/j/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_d

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Ldbxyzptlk/j/a;->m()V

    .line 118
    iget-boolean v0, p0, Ldbxyzptlk/j/a;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    invoke-direct {p0}, Ldbxyzptlk/j/a;->m()V

    .line 129
    iget-object v0, p0, Ldbxyzptlk/j/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .registers 2

    .prologue
    .line 138
    invoke-direct {p0}, Ldbxyzptlk/j/a;->m()V

    .line 139
    iget-boolean v0, p0, Ldbxyzptlk/j/a;->f:Z

    return v0
.end method

.method public final g()J
    .registers 3

    .prologue
    .line 148
    invoke-direct {p0}, Ldbxyzptlk/j/a;->m()V

    .line 149
    iget-wide v0, p0, Ldbxyzptlk/j/a;->g:J

    return-wide v0
.end method

.method public final declared-synchronized h()J
    .registers 4

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ldbxyzptlk/j/a;->k()Landroid/accounts/Account;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_17

    .line 160
    iget-object v1, p0, Ldbxyzptlk/j/a;->i:Landroid/accounts/AccountManager;

    const-string v2, "USER_ID"

    invoke-virtual {v1, v0, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_17

    .line 162
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    move-result-wide v0

    .line 166
    :goto_15
    monitor-exit p0

    return-wide v0

    :cond_17
    const-wide/16 v0, 0x0

    goto :goto_15

    .line 158
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()V
    .registers 5

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ldbxyzptlk/j/a;->k()Landroid/accounts/Account;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_48

    .line 198
    iget-object v1, p0, Ldbxyzptlk/j/a;->i:Landroid/accounts/AccountManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_33

    move-result-object v0

    .line 200
    const-wide v1, 0x7fffffffffffffffL

    :try_start_14
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 201
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_48

    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Did not remove credentials"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_33
    .catch Landroid/accounts/OperationCanceledException; {:try_start_14 .. :try_end_2a} :catch_2a
    .catch Landroid/accounts/AuthenticatorException; {:try_start_14 .. :try_end_2a} :catch_36
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2a} :catch_3f

    .line 204
    :catch_2a
    move-exception v0

    .line 205
    :try_start_2b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to clear credentials."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 196
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    .line 206
    :catch_36
    move-exception v0

    .line 207
    :try_start_37
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to clear credentials."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 208
    :catch_3f
    move-exception v0

    .line 209
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to clear credentials."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 214
    :cond_48
    invoke-direct {p0}, Ldbxyzptlk/j/a;->l()V
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_33

    .line 215
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized j()Ldbxyzptlk/o/k;
    .registers 2

    .prologue
    .line 228
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ldbxyzptlk/j/a;->m()V

    .line 229
    iget-object v0, p0, Ldbxyzptlk/j/a;->h:Ldbxyzptlk/o/k;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 228
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()Landroid/accounts/Account;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 234
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Ldbxyzptlk/j/a;->i:Landroid/accounts/AccountManager;

    const-string v1, "com.dropbox.android.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 235
    array-length v1, v0

    if-le v1, v2, :cond_19

    .line 236
    sget-object v1, Ldbxyzptlk/j/a;->a:Ljava/lang/String;

    const-string v2, "More than one Dropbox account found in AccoutManager"

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_22

    .line 243
    :goto_17
    monitor-exit p0

    return-object v0

    .line 239
    :cond_19
    :try_start_19
    array-length v1, v0

    if-ne v1, v2, :cond_20

    .line 240
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_22

    goto :goto_17

    .line 243
    :cond_20
    const/4 v0, 0x0

    goto :goto_17

    .line 234
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method
