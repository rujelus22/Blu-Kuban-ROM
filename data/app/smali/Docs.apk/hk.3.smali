.class public Lhk;
.super Ljava/lang/Object;
.source "NewMainProxyActivity.java"

# interfaces
.implements LHX;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/NewMainProxyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 331
    iget-object v0, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Lck;

    iget-object v1, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 332
    iget-object v0, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:LXJ;

    iget-object v1, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    sget v2, LcY;->google_account_missing_all_apps:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    iget-object v0, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->b(Lcom/google/android/apps/docs/app/NewMainProxyActivity;)V

    .line 334
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 5
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Lck;

    iget-object v1, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 325
    iget-object v0, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:LXJ;

    iget-object v1, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    sget v2, LcY;->google_account_missing_all_apps:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    iget-object v0, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->b(Lcom/google/android/apps/docs/app/NewMainProxyActivity;)V

    .line 327
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a:Lck;

    iget-object v1, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 319
    iget-object v0, p0, Lhk;->a:Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Lcom/google/android/apps/docs/app/NewMainProxyActivity;)V

    .line 320
    return-void
.end method
