.class public Lcom/google/android/apps/common/offerslib/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/apps/common/offerslib/v;


# instance fields
.field private b:LL/m;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/v;->f:Landroid/content/Context;

    .line 35
    invoke-direct {p0, p2}, Lcom/google/android/apps/common/offerslib/v;->a(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/apps/common/offerslib/v;
    .registers 4
    .parameter

    .prologue
    .line 59
    const-class v1, Lcom/google/android/apps/common/offerslib/v;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/common/offerslib/v;->a:Lcom/google/android/apps/common/offerslib/v;

    if-nez v0, :cond_10

    .line 60
    new-instance v0, Lcom/google/android/apps/common/offerslib/v;

    const-string v2, "https://www.google.com/offers/mrpc"

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/common/offerslib/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/common/offerslib/v;->a:Lcom/google/android/apps/common/offerslib/v;

    .line 63
    :cond_10
    sget-object v0, Lcom/google/android/apps/common/offerslib/v;->a:Lcom/google/android/apps/common/offerslib/v;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/v;->c:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/google/commerce/wireless/topiary/Q;

    invoke-direct {v0}, Lcom/google/commerce/wireless/topiary/Q;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/commerce/wireless/topiary/Q;->a(Ljava/lang/String;)Lcom/google/commerce/wireless/topiary/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/v;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/commerce/wireless/topiary/Q;->a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/Q;

    move-result-object v0

    const-string v1, "sierra"

    invoke-virtual {v0, v1}, Lcom/google/commerce/wireless/topiary/Q;->b(Ljava/lang/String;)Lcom/google/commerce/wireless/topiary/Q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/commerce/wireless/topiary/Q;->a(Z)Lcom/google/commerce/wireless/topiary/Q;

    move-result-object v0

    .line 45
    invoke-static {v0}, LL/m;->a(Lcom/google/commerce/wireless/topiary/Q;)LL/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/v;->b:LL/m;

    .line 46
    return-void
.end method


# virtual methods
.method public a(LL/g;Landroid/accounts/Account;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 95
    new-instance v0, Lcom/google/commerce/wireless/topiary/J;

    invoke-direct {v0}, Lcom/google/commerce/wireless/topiary/J;-><init>()V

    .line 96
    invoke-virtual {v0, p2}, Lcom/google/commerce/wireless/topiary/J;->a(Landroid/accounts/Account;)Lcom/google/commerce/wireless/topiary/J;

    .line 98
    invoke-virtual {p1}, LL/g;->q()LL/i;

    move-result-object v1

    .line 99
    const-string v2, "a.1"

    invoke-virtual {v1, v2}, LL/i;->c(Ljava/lang/String;)LL/i;

    .line 104
    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/v;->d:Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 105
    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/v;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, LL/i;->a(Ljava/lang/String;)LL/i;

    .line 107
    :cond_1a
    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/v;->e:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 108
    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/v;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, LL/i;->b(Ljava/lang/String;)LL/i;

    .line 111
    :cond_23
    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/v;->b:LL/m;

    if-nez v2, :cond_2f

    .line 112
    const-string v0, "OfferLogClient"

    const-string v1, "stub == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_2e
    return-void

    .line 114
    :cond_2f
    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/v;->b:LL/m;

    invoke-virtual {v1}, LL/i;->b()LL/g;

    move-result-object v1

    new-instance v3, Lcom/google/android/apps/common/offerslib/w;

    invoke-direct {v3, p0}, Lcom/google/android/apps/common/offerslib/w;-><init>(Lcom/google/android/apps/common/offerslib/v;)V

    invoke-virtual {v2, v0, v1, v3}, LL/m;->a(Lcom/google/commerce/wireless/topiary/J;LL/g;Lcom/google/commerce/wireless/topiary/H;)V

    goto :goto_2e
.end method

.method public a(Lcom/google/android/apps/common/offerslib/a;)V
    .registers 4
    .parameter

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/google/android/apps/common/offerslib/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/v;->d:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/google/android/apps/common/offerslib/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/v;->e:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/google/android/apps/common/offerslib/a;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 74
    invoke-virtual {p1}, Lcom/google/android/apps/common/offerslib/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/offerslib/v;->a(Ljava/lang/String;)V

    .line 76
    :cond_1f
    return-void
.end method
