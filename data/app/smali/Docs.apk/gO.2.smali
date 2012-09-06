.class public LgO;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements LIj;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/HomeScreenActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/HomeScreenActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, LgO;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/accounts/Account;)V
    .registers 5
    .parameter

    .prologue
    .line 754
    iget-object v0, p0, LgO;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Lcom/google/android/apps/docs/app/HomeScreenActivity;)LkG;

    move-result-object v0

    invoke-virtual {v0}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 755
    iget-object v0, p0, LgO;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LXj;

    iget-object v1, p0, LgO;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LXj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 757
    :cond_1d
    return-void
.end method
