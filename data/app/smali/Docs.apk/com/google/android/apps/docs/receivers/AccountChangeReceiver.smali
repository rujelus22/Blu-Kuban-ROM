.class public Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;
.super Lcom/google/android/apps/docs/GuiceBroadcastReceiver;
.source "AccountChangeReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LNW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/apps/docs/GuiceBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 57
    sget-object v0, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected broadcast received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_25
    return-void

    .line 60
    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;->a:Llu;

    invoke-interface {v0}, Llu;->a()Ljava/util/Set;

    move-result-object v2

    .line 63
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_43
    if-ge v0, v5, :cond_4f

    aget-object v6, v4, v0

    .line 65
    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 67
    :cond_4f
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 68
    invoke-interface {v4, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 69
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-interface {v5, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 72
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    iget-object v3, p0, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;->a:Llu;

    invoke-interface {v3, v0}, Llu;->b(Ljava/lang/String;)LkG;

    goto :goto_63

    .line 75
    :cond_75
    iget-object v0, p0, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;->a:LNW;

    invoke-interface {v0, p1, v5, v4}, LNW;->a(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V

    .line 76
    sget-object v0, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;->a:Ljava/lang/String;

    const-string v2, "Accounts changed: %s add; %s removed"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v1

    const/4 v1, 0x1

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 79
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;->a:Llu;

    invoke-interface {v2, v0}, Llu;->b(Ljava/lang/String;)LkG;

    goto :goto_97
.end method
