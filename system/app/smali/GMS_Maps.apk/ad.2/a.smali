.class public Lad/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lad/a;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()V
    .registers 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    sget-object v0, Lad/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/googlenav/login/a;->a(Landroid/content/Context;Lcom/google/googlenav/android/ac;)Lcom/google/googlenav/login/g;

    move-result-object v0

    new-instance v2, Lad/b;

    sget-object v3, Lad/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lad/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/i;)V

    invoke-static {v1, v1, v1}, Lax/aa;->b(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)Lax/aa;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/googlenav/login/g;->c(Lcom/google/googlenav/login/h;)V

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->o()Z

    move-result v2

    if-nez v2, :cond_2d

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/login/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_2d
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static declared-synchronized c(Landroid/content/Context;)V
    .registers 3

    const-class v1, Lad/a;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lad/a;->b:Z

    if-nez v0, :cond_f

    sput-object p0, Lad/a;->a:Landroid/content/Context;

    invoke-static {p0}, Lad/a;->d(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lad/a;->b:Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static d(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lat/h;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v0

    invoke-virtual {v0}, Lap/c;->d()V

    invoke-static {p0}, Lad/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lad/a;->b()V

    :cond_19
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lak/m;->a(Z)V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->a()V

    :cond_19
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lad/a;->c(Landroid/content/Context;)V

    return-void
.end method
