.class public LeL;
.super LcI;
.source "DocumentOpenerActivity.java"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Ljava/lang/Runnable;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, LeL;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iput-object p2, p0, LeL;->a:Ljava/lang/Runnable;

    iput-object p3, p0, LeL;->a:Landroid/content/Intent;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 621
    :try_start_0
    iget-object v0, p0, LeL;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v1, p0, LeL;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 622
    iget-object v0, p0, LeL;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v1, p0, LeL;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Landroid/content/Intent;)V

    .line 623
    iget-object v0, p0, LeL;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v1, p0, LeL;->a:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 625
    iget-object v0, p0, LeL;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Z)Z
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 630
    :goto_1c
    return-void

    .line 626
    :catch_1d
    move-exception v0

    .line 627
    iget-object v0, p0, LeL;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->b(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;)V

    .line 628
    iget-object v0, p0, LeL;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    sget-object v1, LpQ;->c:LpQ;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;LpQ;)V

    goto :goto_1c
.end method
