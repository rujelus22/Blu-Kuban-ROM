.class public Lcom/google/commerce/wireless/topiary/C;
.super Landroid/support/v4/app/f;
.source "SourceFile"


# instance fields
.field protected N:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

.field protected O:Lcom/google/commerce/wireless/topiary/D;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 36
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/C;->d()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 40
    :try_start_6
    invoke-static {v2}, Lcom/google/commerce/wireless/topiary/b;->a(Landroid/app/Activity;)Landroid/accounts/Account;
    :try_end_9
    .catch Lcom/google/commerce/wireless/topiary/c; {:try_start_6 .. :try_end_9} :catch_31

    move-result-object v0

    .line 45
    :goto_a
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/commerce/wireless/topiary/D;->a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/D;

    move-result-object v3

    iput-object v3, p0, Lcom/google/commerce/wireless/topiary/C;->O:Lcom/google/commerce/wireless/topiary/D;

    .line 46
    new-instance v3, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    iget-object v4, p0, Lcom/google/commerce/wireless/topiary/C;->O:Lcom/google/commerce/wireless/topiary/D;

    invoke-direct {v3, v2, v0, v4, v1}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/commerce/wireless/topiary/D;Lcom/google/commerce/wireless/topiary/z;)V

    iput-object v3, p0, Lcom/google/commerce/wireless/topiary/C;->N:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    .line 48
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/C;->N:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/C;->b(Landroid/content/Intent;)V

    .line 53
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/C;->N:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    return-object v0

    .line 41
    :catch_31
    move-exception v0

    move-object v0, v1

    goto :goto_a
.end method

.method public a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/C;->N:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;Lcom/google/commerce/wireless/topiary/HybridWebView;)V

    .line 91
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_15

    .line 80
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/C;->d()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/commerce/wireless/topiary/S;->a(Landroid/content/Intent;)Lcom/google/commerce/wireless/topiary/S;

    move-result-object v1

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/google/commerce/wireless/topiary/C;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;)V

    .line 83
    :cond_15
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/C;->N:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a()V

    .line 59
    iput-object v1, p0, Lcom/google/commerce/wireless/topiary/C;->N:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    .line 60
    iput-object v1, p0, Lcom/google/commerce/wireless/topiary/C;->O:Lcom/google/commerce/wireless/topiary/D;

    .line 61
    invoke-super {p0}, Landroid/support/v4/app/f;->i()V

    .line 62
    return-void
.end method
