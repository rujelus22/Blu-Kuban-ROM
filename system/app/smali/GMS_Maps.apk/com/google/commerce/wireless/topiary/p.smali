.class Lcom/google/commerce/wireless/topiary/p;
.super Lcom/google/commerce/wireless/topiary/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/commerce/wireless/topiary/a;

.field final synthetic b:Landroid/accounts/Account;

.field final synthetic c:Lcom/google/commerce/wireless/topiary/S;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Lcom/google/commerce/wireless/topiary/HybridWebView;


# direct methods
.method constructor <init>(Lcom/google/commerce/wireless/topiary/HybridWebView;Lcom/google/commerce/wireless/topiary/a;Landroid/accounts/Account;Lcom/google/commerce/wireless/topiary/S;Landroid/os/Handler;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/p;->e:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/p;->a:Lcom/google/commerce/wireless/topiary/a;

    iput-object p3, p0, Lcom/google/commerce/wireless/topiary/p;->b:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/google/commerce/wireless/topiary/p;->c:Lcom/google/commerce/wireless/topiary/S;

    iput-object p5, p0, Lcom/google/commerce/wireless/topiary/p;->d:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/google/commerce/wireless/topiary/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    .prologue
    .line 441
    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/p;->a:Lcom/google/commerce/wireless/topiary/a;

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/p;->b:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/p;->c:Lcom/google/commerce/wireless/topiary/S;

    invoke-virtual {v2}, Lcom/google/commerce/wireless/topiary/S;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/commerce/wireless/topiary/a;->a(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_2b

    move-result-object v0

    .line 449
    :goto_e
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/p;->e:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-static {v1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Got token from acct mgr"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/p;->d:Landroid/os/Handler;

    new-instance v2, Lcom/google/commerce/wireless/topiary/q;

    invoke-direct {v2, p0, v0}, Lcom/google/commerce/wireless/topiary/q;-><init>(Lcom/google/commerce/wireless/topiary/p;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 460
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/p;->a:Lcom/google/commerce/wireless/topiary/a;

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/p;->b:Landroid/accounts/Account;

    invoke-interface {v1, v2, v0}, Lcom/google/commerce/wireless/topiary/a;->b(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 461
    return-void

    .line 444
    :catch_2b
    move-exception v0

    .line 445
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/p;->e:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-static {v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get token for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/p;->c:Lcom/google/commerce/wireless/topiary/S;

    invoke-virtual {v2}, Lcom/google/commerce/wireless/topiary/S;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v0, 0x0

    goto :goto_e
.end method
