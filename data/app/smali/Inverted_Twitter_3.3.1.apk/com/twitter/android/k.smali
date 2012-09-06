.class final Lcom/twitter/android/k;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/ActivityFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ActivityFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/k;->a:Lcom/twitter/android/ActivityFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJI)V
    .registers 15

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/twitter/android/k;->a:Lcom/twitter/android/ActivityFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ActivityFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/twitter/android/k;->a:Lcom/twitter/android/ActivityFragment;

    iget v2, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v2}, Lcom/twitter/android/ActivityFragment;->c(I)V

    const/16 v1, 0xc8

    if-eq p3, v1, :cond_25

    iget-object v0, p0, Lcom/twitter/android/k;->a:Lcom/twitter/android/ActivityFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0171

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget v0, v0, Lcom/twitter/android/cm;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_24

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "activity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "discover"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/twitter/android/k;->a:Lcom/twitter/android/ActivityFragment;

    invoke-virtual {v1}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/k;->a:Lcom/twitter/android/ActivityFragment;

    iget-object v2, v2, Lcom/twitter/android/ActivityFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v1, v0, v3, v2}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/accounts/Account;)V

    goto :goto_24
.end method
