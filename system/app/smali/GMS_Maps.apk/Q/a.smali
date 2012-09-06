.class public LQ/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, LQ/a;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 113
    sget-object v0, LQ/a;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Las/a;->a(Landroid/content/Context;Lcom/google/googlenav/android/Y;)Las/f;

    move-result-object v0

    .line 114
    new-instance v1, LQ/b;

    sget-object v2, LQ/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, LQ/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Las/f;->a(Las/h;)V

    .line 115
    invoke-static {v3, v3, v3}, Lcom/google/googlenav/friend/ae;->a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/friend/bk;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Las/f;->e(Las/g;)V

    .line 118
    invoke-virtual {v0}, Las/f;->k()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Las/f;->o()Z

    move-result v1

    if-nez v1, :cond_27

    .line 122
    invoke-virtual {v0, v3}, Las/f;->b(Las/g;)V

    .line 126
    :cond_27
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 102
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 103
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
    .parameter

    .prologue
    .line 55
    const-class v1, LQ/a;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LQ/a;->b:Z

    if-nez v0, :cond_f

    .line 56
    sput-object p0, LQ/a;->a:Landroid/content/Context;

    .line 57
    invoke-static {p0}, LQ/a;->d(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, LQ/a;->b:Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 60
    :cond_f
    monitor-exit v1

    return-void

    .line 55
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static d(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 84
    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 85
    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    .line 86
    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v0

    invoke-virtual {v0}, LY/c;->d()V

    .line 87
    invoke-static {p0}, LQ/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 88
    invoke-static {}, Lcom/google/googlenav/K;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/M;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 90
    invoke-static {}, Lcom/google/googlenav/friend/af;->K()V

    .line 91
    new-instance v0, LQ/b;

    invoke-direct {v0, p0}, LQ/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, LQ/b;->L_()V

    .line 96
    :cond_2b
    :goto_2b
    return-void

    .line 93
    :cond_2c
    invoke-static {}, LQ/a;->b()V

    goto :goto_2b
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 68
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->a(Z)V

    .line 71
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 72
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->a()V

    .line 74
    :cond_19
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    invoke-static {p1}, LQ/a;->c(Landroid/content/Context;)V

    .line 48
    return-void
.end method
