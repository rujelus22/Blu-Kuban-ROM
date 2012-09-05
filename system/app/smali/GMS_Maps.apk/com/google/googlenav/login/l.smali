.class Lcom/google/googlenav/login/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/login/p;

.field final synthetic b:Lcom/google/googlenav/login/k;


# direct methods
.method constructor <init>(Lcom/google/googlenav/login/k;Lcom/google/googlenav/login/p;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/login/l;->b:Lcom/google/googlenav/login/k;

    iput-object p2, p0, Lcom/google/googlenav/login/l;->a:Lcom/google/googlenav/login/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/login/l;->b:Lcom/google/googlenav/login/k;

    iget-object v1, p0, Lcom/google/googlenav/login/l;->b:Lcom/google/googlenav/login/k;

    invoke-static {v1}, Lcom/google/googlenav/login/k;->a(Lcom/google/googlenav/login/k;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/login/k;->a(Lcom/google/googlenav/login/k;[Landroid/accounts/Account;)[Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/googlenav/login/l;->b:Lcom/google/googlenav/login/k;

    invoke-static {v0}, Lcom/google/googlenav/login/k;->b(Lcom/google/googlenav/login/k;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/login/k;->b([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/googlenav/login/l;->b:Lcom/google/googlenav/login/k;

    invoke-static {v0}, Lcom/google/googlenav/login/k;->b(Lcom/google/googlenav/login/k;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/login/k;->a([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(Ljava/lang/String;)V

    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/login/l;->b:Lcom/google/googlenav/login/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/login/k;->a(Lcom/google/googlenav/login/k;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/login/l;->a:Lcom/google/googlenav/login/p;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/googlenav/login/l;->a:Lcom/google/googlenav/login/p;

    invoke-interface {v0}, Lcom/google/googlenav/login/p;->a()V

    :cond_41
    return-void
.end method
