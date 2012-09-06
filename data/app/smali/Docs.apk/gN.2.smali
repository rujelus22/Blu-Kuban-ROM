.class public LgN;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements LHX;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/HomeScreenActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/HomeScreenActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 657
    iget-object v0, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lck;

    iget-object v1, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 658
    iget-object v0, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LXJ;

    iget-object v1, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    sget v2, LcY;->google_account_missing_all_apps:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 659
    iget-object v0, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->finish()V

    .line 660
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 5
    .parameter

    .prologue
    .line 650
    iget-object v0, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lck;

    iget-object v1, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 651
    iget-object v0, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LXJ;

    iget-object v1, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    sget v2, LcY;->google_account_missing_all_apps:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    iget-object v0, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->finish()V

    .line 653
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 644
    iget-object v0, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lck;

    iget-object v1, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 645
    iget-object v0, p0, LgN;->a:Lcom/google/android/apps/docs/app/HomeScreenActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Lcom/google/android/apps/docs/app/HomeScreenActivity;Ljava/lang/String;Z)V

    .line 646
    return-void
.end method
