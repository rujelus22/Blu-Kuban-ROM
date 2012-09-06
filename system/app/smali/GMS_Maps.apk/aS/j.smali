.class public Las/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Las/j;


# instance fields
.field private a:Landroid/accounts/AccountManager;

.field private b:[Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Las/j;

    invoke-direct {v0}, Las/j;-><init>()V

    sput-object v0, Las/j;->c:Las/j;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static a([Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 2
    .parameter

    .prologue
    .line 242
    array-length v0, p0

    if-nez v0, :cond_5

    .line 243
    const/4 v0, 0x0

    .line 252
    :cond_4
    :goto_4
    return-object v0

    .line 246
    :cond_5
    invoke-static {p0}, Las/j;->c([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    .line 247
    if-nez v0, :cond_4

    .line 252
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_4
.end method

.method static synthetic a(Las/j;)Landroid/accounts/AccountManager;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Las/j;->a:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method public static a()Las/j;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Las/j;->c:Las/j;

    return-object v0
.end method

.method public static a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 126
    if-nez p1, :cond_2d

    .line 127
    if-eqz p2, :cond_2c

    if-eqz p4, :cond_2c

    .line 128
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string v0, "introMessage"

    const/16 v1, 0x24

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 130
    const-string v0, "allowSkip"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    const-string v1, "com.google"

    const-string v2, "local"

    new-instance v6, Las/l;

    invoke-direct {v6, p0, p2, p3, p4}, Las/l;-><init>(Landroid/accounts/AccountManager;ZZLandroid/app/Activity;)V

    move-object v0, p0

    move-object v5, p4

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 179
    :cond_2c
    :goto_2c
    return-void

    .line 172
    :cond_2d
    new-instance v6, LY/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v7

    new-instance v0, Las/m;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Las/m;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V

    invoke-direct {v6, v7, v0}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v6}, LY/b;->g()V

    goto :goto_2c
.end method

.method public static a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 229
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    check-cast v0, Las/a;

    .line 230
    invoke-virtual {v0, p0}, Las/a;->a(Z)V

    .line 231
    return-void
.end method

.method static synthetic a(Las/j;[Landroid/accounts/Account;)[Landroid/accounts/Account;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Las/j;->b:[Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic b([Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 2
    .parameter

    .prologue
    .line 32
    invoke-static {p0}, Las/j;->c([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    :try_start_0
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    check-cast v0, Las/a;

    .line 189
    const-string v1, "local"

    invoke-virtual {p0, p1, v1, p2}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 192
    const-string v2, "SID"

    invoke-virtual {p0, p1, v2, p2}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 193
    const-string v3, "LSID"

    invoke-virtual {p0, p1, v3, p2}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 197
    if-eqz v1, :cond_23

    .line 198
    invoke-virtual {v0, v1, v2, v3, p3}, Las/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Las/a;->a(Ljava/lang/String;)V

    .line 218
    :goto_22
    return-void

    .line 204
    :cond_23
    if-eqz p2, :cond_31

    if-eqz p1, :cond_31

    .line 205
    const/4 v0, 0x0

    invoke-static {p0, v0, p2, p3, p4}, Las/j;->b(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V
    :try_end_2b
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_2b} :catch_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_35
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_2b} :catch_3a

    goto :goto_22

    .line 211
    :catch_2c
    move-exception v0

    .line 212
    invoke-static {p3}, Las/j;->a(Z)V

    goto :goto_22

    .line 208
    :cond_31
    :try_start_31
    invoke-static {p3}, Las/j;->a(Z)V
    :try_end_34
    .catch Landroid/accounts/OperationCanceledException; {:try_start_31 .. :try_end_34} :catch_2c
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35
    .catch Landroid/accounts/AuthenticatorException; {:try_start_31 .. :try_end_34} :catch_3a

    goto :goto_22

    .line 213
    :catch_35
    move-exception v0

    .line 214
    invoke-static {p3}, Las/j;->a(Z)V

    goto :goto_22

    .line 215
    :catch_3a
    move-exception v0

    .line 216
    invoke-static {p3}, Las/j;->a(Z)V

    goto :goto_22
.end method

.method static synthetic b(Las/j;)[Landroid/accounts/Account;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Las/j;->b:[Landroid/accounts/Account;

    return-object v0
.end method

.method private static c([Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 3
    .parameter

    .prologue
    .line 288
    invoke-static {p0}, Las/j;->d([Landroid/accounts/Account;)I

    move-result v0

    .line 289
    if-ltz v0, :cond_c

    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 290
    aget-object v0, p0, v0

    .line 292
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static d([Landroid/accounts/Account;)I
    .registers 4
    .parameter

    .prologue
    .line 296
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->v()Ljava/lang/String;

    move-result-object v1

    .line 297
    if-eqz v1, :cond_23

    .line 298
    const/4 v0, 0x0

    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 299
    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 308
    :goto_18
    return v0

    .line 298
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 306
    :cond_1c
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->p()V

    .line 308
    :cond_23
    const/4 v0, -0x1

    goto :goto_18
.end method


# virtual methods
.method public a(I)Landroid/accounts/Account;
    .registers 3
    .parameter

    .prologue
    .line 275
    if-ltz p1, :cond_c

    iget-object v0, p0, Las/j;->b:[Landroid/accounts/Account;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 276
    iget-object v0, p0, Las/j;->b:[Landroid/accounts/Account;

    aget-object v0, v0, p1

    .line 278
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public a(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 68
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Las/j;->a:Landroid/accounts/AccountManager;

    .line 70
    iget-object v0, p0, Las/j;->b:[Landroid/accounts/Account;

    if-nez v0, :cond_f

    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    iput-object v0, p0, Las/j;->b:[Landroid/accounts/Account;

    .line 75
    :cond_f
    new-instance v0, LY/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    new-instance v2, Las/k;

    invoke-direct {v2, p0}, Las/k;-><init>(Las/j;)V

    invoke-direct {v0, v1, v2}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LY/b;->g()V

    .line 91
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 99
    invoke-virtual {p0}, Las/j;->e()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0}, Las/j;->e()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Las/j;->b:[Landroid/accounts/Account;

    if-eqz v1, :cond_11

    iget-object v1, p0, Las/j;->b:[Landroid/accounts/Account;

    array-length v1, v1

    if-le v1, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public d()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 261
    iget-object v0, p0, Las/j;->b:[Landroid/accounts/Account;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 262
    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Las/j;->b:[Landroid/accounts/Account;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    .line 263
    iget-object v2, p0, Las/j;->b:[Landroid/accounts/Account;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 265
    :cond_16
    return-object v1
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 337
    sget-boolean v0, Las/n;->a:Z

    return v0
.end method
