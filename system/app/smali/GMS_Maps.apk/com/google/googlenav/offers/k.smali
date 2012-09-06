.class public Lcom/google/googlenav/offers/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las/h;


# static fields
.field private static a:Lcom/google/googlenav/offers/k;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Lcom/google/googlenav/android/Y;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/android/Y;)V
    .registers 4
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/offers/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    iput-object p1, p0, Lcom/google/googlenav/offers/k;->c:Lcom/google/googlenav/android/Y;

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 3
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1}, Las/f;->v()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 73
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Las/j;->a([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    .line 77
    :cond_1f
    return-object v0
.end method

.method public static a(Lcom/google/googlenav/android/Y;)Lcom/google/googlenav/offers/k;
    .registers 2
    .parameter

    .prologue
    .line 117
    sget-object v0, Lcom/google/googlenav/offers/k;->a:Lcom/google/googlenav/offers/k;

    if-nez v0, :cond_b

    .line 118
    new-instance v0, Lcom/google/googlenav/offers/k;

    invoke-direct {v0, p0}, Lcom/google/googlenav/offers/k;-><init>(Lcom/google/googlenav/android/Y;)V

    sput-object v0, Lcom/google/googlenav/offers/k;->a:Lcom/google/googlenav/offers/k;

    .line 120
    :cond_b
    sget-object v0, Lcom/google/googlenav/offers/k;->a:Lcom/google/googlenav/offers/k;

    return-object v0
.end method

.method public static g()Lcom/google/android/apps/common/offerslib/a;
    .registers 7

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/apps/common/offerslib/a;

    const-string v1, "gmm"

    const-string v2, "6.11.1"

    new-instance v3, Lcom/google/android/apps/common/offerslib/b;

    const/16 v4, 0x2ac

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x308

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5f2

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/apps/common/offerslib/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/K;->af()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/K;->ah()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v6

    if-nez v6, :cond_39

    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v6

    if-eqz v6, :cond_3e

    :cond_39
    const/4 v6, 0x1

    :goto_3a
    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/common/offerslib/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/common/offerslib/b;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_3e
    const/4 v6, 0x0

    goto :goto_3a
.end method

.method public static h()Lcom/google/googlenav/offers/k;
    .registers 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/googlenav/offers/k;->a:Lcom/google/googlenav/offers/k;

    return-object v0
.end method


# virtual methods
.method public D_()V
    .registers 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/googlenav/offers/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/offers/k;->c:Lcom/google/googlenav/android/Y;

    new-instance v1, Lcom/google/googlenav/offers/l;

    invoke-direct {v1, p0}, Lcom/google/googlenav/offers/l;-><init>(Lcom/google/googlenav/offers/k;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 99
    :cond_13
    return-void
.end method

.method public E_()V
    .registers 1

    .prologue
    .line 104
    return-void
.end method

.method public F_()V
    .registers 1

    .prologue
    .line 109
    return-void
.end method

.method public L_()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method

.method public M_()V
    .registers 1

    .prologue
    .line 114
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/googlenav/offers/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 47
    if-nez v0, :cond_23

    .line 48
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->R()Landroid/content/Context;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/google/googlenav/offers/k;->g()Lcom/google/android/apps/common/offerslib/a;

    move-result-object v1

    .line 50
    invoke-static {v0}, Lcom/google/googlenav/offers/k;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Landroid/content/Context;Lcom/google/android/apps/common/offerslib/a;Landroid/accounts/Account;)V

    .line 51
    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/v;->a(Landroid/content/Context;)Lcom/google/android/apps/common/offerslib/v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/v;->a(Lcom/google/android/apps/common/offerslib/a;)V

    .line 53
    :cond_23
    return-void
.end method
