.class public Lcom/google/googlenav/login/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static f:Lcom/google/googlenav/login/k;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Landroid/accounts/AccountManager;

.field private d:[Landroid/accounts/Account;

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_7
    sput v0, Lcom/google/googlenav/login/k;->a:I

    new-instance v0, Lcom/google/googlenav/login/k;

    invoke-direct {v0}, Lcom/google/googlenav/login/k;-><init>()V

    sput-object v0, Lcom/google/googlenav/login/k;->f:Lcom/google/googlenav/login/k;

    return-void

    :cond_11
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/login/k;->e:Z

    return-void
.end method

.method public static a([Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 2

    array-length v0, p0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Lcom/google/googlenav/login/k;->c([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_4
.end method

.method static synthetic a(Lcom/google/googlenav/login/k;)Landroid/accounts/AccountManager;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/login/k;->c:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method public static a()Lcom/google/googlenav/login/k;
    .registers 1

    sget-object v0, Lcom/google/googlenav/login/k;->f:Lcom/google/googlenav/login/k;

    return-object v0
.end method

.method public static a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V
    .registers 13

    const/4 v3, 0x0

    if-nez p1, :cond_2b

    if-eqz p2, :cond_2a

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "introMessage"

    const/16 v1, 0x22

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "allowSkip"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google"

    const-string v2, "local"

    new-instance v6, Lcom/google/googlenav/login/m;

    invoke-direct {v6, p0, p2, p3, p4}, Lcom/google/googlenav/login/m;-><init>(Landroid/accounts/AccountManager;ZZLandroid/app/Activity;)V

    move-object v0, p0

    move-object v5, p4

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    new-instance v6, Lap/b;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v7

    new-instance v0, Lcom/google/googlenav/login/n;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/login/n;-><init>(Landroid/accounts/Account;Landroid/accounts/AccountManager;ZZLandroid/app/Activity;)V

    invoke-direct {v6, v7, v0}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Lap/b;->g()V

    goto :goto_2a
.end method

.method public static a(Z)V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/a;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/login/a;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/login/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/login/k;->e:Z

    return p1
.end method

.method static synthetic a(Lcom/google/googlenav/login/k;[Landroid/accounts/Account;)[Landroid/accounts/Account;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/login/k;->d:[Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic b([Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 2

    invoke-static {p0}, Lcom/google/googlenav/login/k;->c([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/login/k;)[Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/login/k;->d:[Landroid/accounts/Account;

    return-object v0
.end method

.method private static c([Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 3

    invoke-static {p0}, Lcom/google/googlenav/login/k;->d([Landroid/accounts/Account;)I

    move-result v0

    if-ltz v0, :cond_c

    array-length v1, p0

    if-ge v0, v1, :cond_c

    aget-object v0, p0, v0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static d([Landroid/accounts/Account;)I
    .registers 4

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->v()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    const/4 v0, 0x0

    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :goto_18
    return v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1c
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->p()V

    :cond_23
    const/4 v0, -0x1

    goto :goto_18
.end method


# virtual methods
.method public a(I)Landroid/accounts/Account;
    .registers 3

    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/login/k;->d:[Landroid/accounts/Account;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/login/k;->d:[Landroid/accounts/Account;

    aget-object v0, v0, p1

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public a(Landroid/app/Activity;Lcom/google/googlenav/login/p;)V
    .registers 6

    iput-object p1, p0, Lcom/google/googlenav/login/k;->b:Landroid/app/Activity;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/login/k;->c:Landroid/accounts/AccountManager;

    iget-object v0, p0, Lcom/google/googlenav/login/k;->d:[Landroid/accounts/Account;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/googlenav/login/k;->d:[Landroid/accounts/Account;

    :cond_11
    new-instance v0, Lap/b;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/login/l;

    invoke-direct {v2, p0, p2}, Lcom/google/googlenav/login/l;-><init>(Lcom/google/googlenav/login/k;Lcom/google/googlenav/login/p;)V

    invoke-direct {v0, v1, v2}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lap/b;->g()V

    return-void
.end method

.method public b()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/login/k;->e()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/login/k;->e()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/googlenav/login/k;->d:[Landroid/accounts/Account;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/googlenav/login/k;->d:[Landroid/accounts/Account;

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

    iget-object v0, p0, Lcom/google/googlenav/login/k;->d:[Landroid/accounts/Account;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/googlenav/login/k;->d:[Landroid/accounts/Account;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Lcom/google/googlenav/login/k;->d:[Landroid/accounts/Account;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_16
    return-object v1
.end method

.method public e()Z
    .registers 2

    sget-boolean v0, Lcom/google/googlenav/login/o;->a:Z

    return v0
.end method
