.class public Lcom/google/googlenav/android/OnPauseService;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "OnPauseService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/googlenav/prefetch/android/a;->d()Lcom/google/googlenav/prefetch/android/a;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/google/googlenav/prefetch/android/a;->b()V

    :cond_1c
    const-string v1, "is_finishing"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->j(Z)V

    goto :goto_6
.end method
