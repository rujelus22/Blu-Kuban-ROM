.class public final Lcom/google/android/youtube/core/async/UserAuthorizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/youtube/core/async/a;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Ljava/util/Set;

.field private final d:Lcom/google/android/youtube/core/async/bf;

.field private e:Lcom/google/android/youtube/core/b/ae;

.field private f:Landroid/accounts/Account;

.field private g:Z

.field private final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/a;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/async/bf;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "accountManagerWrapper cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/async/a;

    .line 94
    const-string v0, "preferences cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->b:Landroid/content/SharedPreferences;

    .line 95
    const-string v0, "signInIntentFactory cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/bf;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->d:Lcom/google/android/youtube/core/async/bf;

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->c:Ljava/util/Set;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/UserAuthorizer;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/accounts/Account;Landroid/app/Activity;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 405
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/async/a;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->e:Lcom/google/android/youtube/core/b/ae;

    if-nez v0, :cond_f

    new-instance v0, Lcom/google/android/youtube/core/async/bb;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/core/async/bb;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    :goto_b
    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/accounts/Account;Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 407
    return-void

    .line 405
    :cond_f
    new-instance v0, Lcom/google/android/youtube/core/async/bg;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/core/async/bg;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    goto :goto_b
.end method

.method private declared-synchronized a(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 395
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->f:Landroid/accounts/Account;

    if-eqz v0, :cond_f

    .line 397
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->f:Landroid/accounts/Account;

    invoke-direct {p0, v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/accounts/Account;Landroid/app/Activity;)V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->f:Landroid/accounts/Account;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    .line 402
    :goto_d
    monitor-exit p0

    return-void

    .line 400
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->d()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_d

    .line 395
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/youtube/core/async/bc;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 192
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "callback cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 196
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->e()Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_28

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 198
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a()V

    .line 200
    :cond_28
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/async/a;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/async/a;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_34

    .line 202
    invoke-direct {p0, v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/accounts/Account;Landroid/app/Activity;)V

    .line 208
    :cond_33
    :goto_33
    return-void

    .line 204
    :cond_34
    iput-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->f:Landroid/accounts/Account;

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->d:Lcom/google/android/youtube/core/async/bf;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/async/a;

    invoke-interface {v0, p1, v1, v2, p3}, Lcom/google/android/youtube/core/async/bf;->a(Landroid/content/Context;Lcom/google/android/youtube/core/async/a;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x387

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_33
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .registers 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->g()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->e:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method

.method private declared-synchronized e()Ljava/lang/String;
    .registers 4

    .prologue
    .line 286
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->b:Landroid/content/SharedPreferences;

    const-string v1, "user_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Ljava/lang/String;
    .registers 4

    .prologue
    .line 290
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->b:Landroid/content/SharedPreferences;

    const-string v1, "username"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .registers 3

    .prologue
    .line 294
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "username"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 296
    monitor-exit p0

    return-void

    .line 294
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    .prologue
    .line 266
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->g()V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Z

    .line 268
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/bd;

    .line 269
    invoke-interface {v0}, Lcom/google/android/youtube/core/async/bd;->z()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 266
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :cond_20
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/youtube/core/async/bc;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 309
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Z

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 312
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_account"

    iget-object v3, p2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "username"

    iget-object v3, p2, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 316
    if-eqz v0, :cond_4b

    .line 317
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/bd;

    .line 318
    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/bd;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_43

    goto :goto_33

    .line 309
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_46
    const/4 v0, 0x0

    goto :goto_12

    .line 320
    :cond_48
    const/4 v0, 0x1

    :try_start_49
    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Z

    .line 323
    :cond_4b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 324
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/bc;

    .line 326
    invoke-interface {v0, p2}, Lcom/google/android/youtube/core/async/bc;->a(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_6a
    .catchall {:try_start_49 .. :try_end_6a} :catchall_43

    goto :goto_5b

    .line 328
    :cond_6b
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Landroid/app/Activity;ZZLcom/google/android/youtube/core/async/bc;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 138
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->e()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz p2, :cond_1c

    .line 141
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/async/a;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/async/a;->a()[Landroid/accounts/Account;

    move-result-object v1

    .line 142
    array-length v2, v1

    if-ne v2, v3, :cond_1c

    .line 143
    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 147
    :cond_1c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    const-string v2, "allowSkip"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    invoke-direct {p0, p1, v0, v1, p4}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/youtube/core/async/bc;)V
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_2c

    .line 152
    monitor-exit p0

    return-void

    .line 138
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/youtube/core/async/bc;)V
    .registers 5
    .parameter

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/async/a;

    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/be;

    invoke-direct {v2, p0, p1}, Lcom/google/android/youtube/core/async/be;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/bc;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/a;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/bc;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 241
    monitor-exit p0

    return-void

    .line 239
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/youtube/core/async/bd;)V
    .registers 3
    .parameter

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 255
    monitor-exit p0

    return-void

    .line 254
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/youtube/core/b/ae;)V
    .registers 3
    .parameter

    .prologue
    .line 116
    const-string v0, "gdataClient cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ae;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->e:Lcom/google/android/youtube/core/b/ae;

    .line 118
    return-void
.end method

.method final declared-synchronized a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 331
    monitor-enter p0

    :try_start_1
    const-string v0, "authentication error"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->g()V

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 334
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 335
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/bc;

    .line 336
    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/bc;->a(Ljava/lang/Exception;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    goto :goto_19

    .line 331
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    .line 338
    :cond_2c
    monitor-exit p0

    return-void
.end method

.method public final a(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    const/16 v0, 0x387

    if-eq p2, v0, :cond_6

    .line 372
    const/4 v0, 0x0

    .line 391
    :goto_5
    return v0

    .line 375
    :cond_6
    if-nez p3, :cond_d

    .line 376
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;)V

    .line 391
    :cond_b
    :goto_b
    const/4 v0, 0x1

    goto :goto_5

    .line 377
    :cond_d
    const/4 v0, -0x1

    if-ne p3, v0, :cond_b

    .line 378
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/async/a;

    const-string v1, "authAccount"

    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/a;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_22

    .line 381
    invoke-direct {p0, v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/accounts/Account;Landroid/app/Activity;)V

    goto :goto_b

    .line 383
    :cond_22
    const-string v0, "exception"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 384
    if-eqz v0, :cond_30

    .line 385
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/Exception;)V

    goto :goto_b

    .line 387
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->d()V

    goto :goto_b
.end method

.method public final declared-synchronized b()V
    .registers 3

    .prologue
    .line 274
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->e()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    move-result-object v0

    if-nez v0, :cond_9

    .line 283
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 277
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->e()Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/async/a;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/async/a;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 279
    if-nez v0, :cond_7

    .line 281
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a()V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 274
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/youtube/core/async/bd;)V
    .registers 3
    .parameter

    .prologue
    .line 258
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 259
    monitor-exit p0

    return-void

    .line 258
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .registers 3

    .prologue
    .line 302
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->b:Landroid/content/SharedPreferences;

    const-string v1, "user_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized d()V
    .registers 3

    .prologue
    .line 341
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->g()V

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 344
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/bc;

    .line 345
    invoke-interface {v0}, Lcom/google/android/youtube/core/async/bc;->e_()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_14

    .line 341
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 347
    :cond_27
    monitor-exit p0

    return-void
.end method
