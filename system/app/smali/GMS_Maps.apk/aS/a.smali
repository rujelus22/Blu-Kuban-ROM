.class public Las/a;
.super Las/f;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/google/googlenav/android/Y;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Z

.field private final h:LaT/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/googlenav/android/Y;LaT/b;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Las/f;-><init>()V

    .line 83
    iput-object v0, p0, Las/a;->c:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Las/a;->d:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Las/a;->e:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Las/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    iput-object p1, p0, Las/a;->a:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Las/a;->b:Lcom/google/googlenav/android/Y;

    .line 106
    iput-object p3, p0, Las/a;->h:LaT/b;

    .line 109
    invoke-direct {p0}, Las/a;->y()V

    .line 112
    invoke-direct {p0}, Las/a;->x()V

    .line 114
    invoke-super {p0}, Las/f;->i()V

    .line 115
    return-void
.end method

.method private A()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    const-string v0, "sid_token_encrypted"

    invoke-static {v0}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private B()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    const-string v0, "lsid_token_encrypted"

    invoke-static {v0}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private C()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v0, p0, Las/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 277
    iget-object v0, p0, Las/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    iget-object v2, p0, Las/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, v3, v3, v3}, Las/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_15
    return-void
.end method

.method private D()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 484
    iget-object v0, p0, Las/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 489
    iget-object v0, p0, Las/a;->b:Lcom/google/googlenav/android/Y;

    if-eqz v0, :cond_18

    .line 490
    iget-object v0, p0, Las/a;->b:Lcom/google/googlenav/android/Y;

    new-instance v1, Las/b;

    invoke-direct {v1, p0}, Las/b;-><init>(Las/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 500
    :goto_14
    invoke-virtual {p0}, Las/a;->u()V

    .line 501
    return-void

    .line 496
    :cond_18
    invoke-virtual {p0}, Las/a;->p()V

    goto :goto_14
.end method

.method private E()V
    .registers 1

    .prologue
    .line 508
    invoke-virtual {p0}, Las/a;->m()V

    .line 509
    invoke-virtual {p0}, Las/a;->s()V

    .line 510
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/android/Y;)Las/f;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 123
    const-string v0, "AndroidLoginHelper.load"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aA()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 128
    invoke-static {p0}, LaT/b;->a(Landroid/content/Context;)LaT/b;

    move-result-object v0

    .line 129
    new-instance v1, Las/a;

    invoke-direct {v1, p0, p1, v0}, Las/a;-><init>(Landroid/content/Context;Lcom/google/googlenav/android/Y;LaT/b;)V

    invoke-static {v1}, Las/f;->a(Las/f;)V

    .line 134
    :goto_1b
    const-string v0, "AndroidLoginHelper.load"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    return-object v0

    .line 131
    :cond_25
    new-instance v0, Las/d;

    invoke-direct {v0}, Las/d;-><init>()V

    invoke-static {v0}, Las/f;->a(Las/f;)V

    goto :goto_1b
.end method

.method private a(Landroid/content/SharedPreferences;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 176
    if-eqz p1, :cond_39

    const-string v0, "auth_token"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 178
    const-string v0, "auth_token"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    const-string v0, "sid_token"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    const-string v0, "lsid_token"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    if-eqz p2, :cond_2b

    .line 184
    invoke-direct {p0, v2}, Las/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-direct {p0, v1}, Las/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-direct {p0, v0}, Las/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_2b
    invoke-direct {p0, v2, v1, v0}, Las/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    :cond_39
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/j;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 445
    if-nez p2, :cond_7

    .line 446
    const/4 v0, 0x0

    invoke-interface {p3, p1, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 462
    :goto_6
    return-void

    .line 453
    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 454
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 455
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_6

    .line 458
    :catch_1c
    move-exception v0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginHelper - setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private a(ZLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 361
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 363
    :try_start_4
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_7} :catch_f

    .line 373
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 375
    :cond_e
    :goto_e
    return-void

    .line 364
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private a(ZZ)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 315
    if-eqz p1, :cond_3

    .line 319
    :cond_3
    if-eqz p2, :cond_48

    iget-object v0, p0, Las/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_48

    iget-object v0, p0, Las/a;->c:Ljava/lang/String;

    move-object v1, v0

    .line 323
    :goto_c
    iget-object v0, p0, Las/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 326
    if-eqz p2, :cond_1b

    if-eqz v1, :cond_1b

    .line 327
    const-string v0, "com.google"

    invoke-virtual {v3, v0, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_1b
    const-string v0, "com.google"

    invoke-virtual {v3, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Las/j;->a([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v4

    .line 335
    if-nez v4, :cond_2c

    if-eqz p1, :cond_2c

    .line 339
    invoke-static {p2}, Las/j;->a(Z)V

    .line 342
    :cond_2c
    iget-object v0, p0, Las/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    .line 343
    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v5

    if-eqz v5, :cond_44

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/android/b;->i()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_4a

    .line 346
    :cond_44
    invoke-static {v3, v4, p1, p2, v2}, Las/j;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V

    .line 353
    :goto_47
    return-void

    :cond_48
    move-object v1, v2

    .line 319
    goto :goto_c

    .line 349
    :cond_4a
    invoke-direct {p0, p2, v1}, Las/a;->a(ZLjava/lang/String;)V

    .line 350
    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/android/b;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v3, v4, p1, p2, v0}, Las/j;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V

    goto :goto_47
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 596
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Las/a;->h:LaT/b;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, LaT/b;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/util/c;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Las/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 405
    invoke-direct {p0, p1, p2, p3}, Las/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Las/a;->n()V

    .line 411
    invoke-virtual {p0}, Las/a;->t()V

    .line 412
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    if-eqz p4, :cond_6

    .line 392
    invoke-direct {p0, p1, p2, p3}, Las/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :goto_5
    return-void

    .line 394
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Las/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 602
    :try_start_1
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/util/c;->b([B)[B

    move-result-object v0

    .line 604
    if-eqz v0, :cond_2e

    array-length v2, v0

    if-lez v2, :cond_2e

    .line 605
    iget-object v2, p0, Las/a;->h:LaT/b;

    invoke-virtual {v2, v0}, LaT/b;->b([B)[B

    move-result-object v2

    .line 606
    if-eqz v2, :cond_2e

    array-length v0, v2

    if-lez v0, :cond_2e

    .line 607
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2a
    .catch Lcom/google/googlenav/common/util/d; {:try_start_1 .. :try_end_2a} :catch_2b

    .line 613
    :goto_2a
    return-object v0

    .line 610
    :catch_2b
    move-exception v0

    move-object v0, v1

    .line 611
    goto :goto_2a

    :cond_2e
    move-object v0, v1

    .line 613
    goto :goto_2a
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    invoke-direct {p0, p1, p2, p3}, Las/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Las/a;->s()V

    .line 420
    return-void
.end method

.method private c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 472
    if-eqz p1, :cond_6

    .line 473
    invoke-direct {p0}, Las/a;->D()V

    .line 477
    :goto_5
    return-void

    .line 475
    :cond_6
    invoke-direct {p0}, Las/a;->E()V

    goto :goto_5
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Las/a;->c:Ljava/lang/String;

    .line 431
    iput-object p2, p0, Las/a;->d:Ljava/lang/String;

    .line 432
    iput-object p3, p0, Las/a;->e:Ljava/lang/String;

    .line 434
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 436
    const-string v1, "auth_token_encrypted"

    iget-object v2, p0, Las/a;->c:Ljava/lang/String;

    invoke-direct {p0, v2}, Las/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Las/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/j;)V

    .line 437
    const-string v1, "sid_token_encrypted"

    iget-object v2, p0, Las/a;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Las/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Las/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/j;)V

    .line 438
    const-string v1, "lsid_token_encrypted"

    iget-object v2, p0, Las/a;->e:Ljava/lang/String;

    invoke-direct {p0, v2}, Las/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Las/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/j;)V

    .line 440
    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 441
    return-void
.end method

.method private x()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Las/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    invoke-direct {p0}, Las/a;->z()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Las/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Las/a;->c:Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Las/a;->A()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Las/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Las/a;->d:Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Las/a;->B()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Las/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Las/a;->e:Ljava/lang/String;

    .line 151
    return-void
.end method

.method private y()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Las/a;->a:Landroid/content/Context;

    const-string v1, "login_helper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    invoke-direct {p0, v0, v2}, Las/a;->a(Landroid/content/SharedPreferences;Z)V

    .line 161
    iget-object v0, p0, Las/a;->a:Landroid/content/Context;

    const-string v1, "ids"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Las/a;->a(Landroid/content/SharedPreferences;Z)V

    .line 164
    return-void
.end method

.method private z()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    const-string v0, "auth_token_encrypted"

    invoke-static {v0}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 205
    invoke-direct {p0}, Las/a;->x()V

    .line 206
    invoke-super {p0}, Las/f;->a()V

    .line 207
    return-void
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 523
    if-gez p1, :cond_3

    .line 571
    :goto_2
    :pswitch_2
    return-void

    .line 528
    :cond_3
    packed-switch p1, :pswitch_data_1e

    .line 555
    :pswitch_6
    iget-object v0, p0, Las/a;->b:Lcom/google/googlenav/android/Y;

    if-eqz v0, :cond_1a

    .line 559
    const/4 v0, 0x0

    .line 560
    iget-object v1, p0, Las/a;->b:Lcom/google/googlenav/android/Y;

    new-instance v2, Las/c;

    invoke-direct {v2, p0}, Las/c;-><init>(Las/a;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    goto :goto_2

    .line 543
    :pswitch_16
    invoke-virtual {p0}, Las/a;->h()V

    goto :goto_2

    .line 567
    :cond_1a
    invoke-virtual {p0}, Las/a;->p()V

    goto :goto_2

    .line 528
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_16
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Las/g;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    invoke-virtual {p0, v0}, Las/a;->b(Z)V

    .line 302
    invoke-virtual {p0, p1}, Las/a;->d(Las/g;)V

    .line 305
    if-nez p2, :cond_e

    :goto_a
    invoke-direct {p0, v0, v1}, Las/a;->a(ZZ)V

    .line 306
    return-void

    :cond_e
    move v0, v1

    .line 305
    goto :goto_a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-direct {p0, p1, p2, p3, p4}, Las/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 386
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 467
    invoke-direct {p0, p1}, Las/a;->c(Z)V

    .line 468
    return-void
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 231
    invoke-virtual {p0}, Las/a;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Las/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Las/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Las/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected f()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-direct {p0}, Las/a;->C()V

    .line 267
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lac/h;->b(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, v1}, Las/a;->a(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 288
    invoke-direct {p0, v0, v0}, Las/a;->a(ZZ)V

    .line 289
    return-void
.end method

.method public h()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 577
    iget-object v0, p0, Las/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 583
    iget-boolean v0, p0, Las/a;->g:Z

    if-nez v0, :cond_14

    .line 586
    iput-boolean v1, p0, Las/a;->g:Z

    .line 587
    invoke-direct {p0, v2, v1}, Las/a;->a(ZZ)V

    .line 593
    :cond_13
    :goto_13
    return-void

    .line 590
    :cond_14
    iput-boolean v2, p0, Las/a;->g:Z

    goto :goto_13
.end method
