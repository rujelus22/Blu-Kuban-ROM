.class Las/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Las/j;


# direct methods
.method constructor <init>(Las/j;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Las/k;->a:Las/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Las/k;->a:Las/j;

    iget-object v1, p0, Las/k;->a:Las/j;

    invoke-static {v1}, Las/j;->a(Las/j;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Las/j;->a(Las/j;[Landroid/accounts/Account;)[Landroid/accounts/Account;

    .line 83
    iget-object v0, p0, Las/k;->a:Las/j;

    invoke-static {v0}, Las/j;->b(Las/j;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Las/j;->b([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_32

    .line 84
    iget-object v0, p0, Las/k;->a:Las/j;

    invoke-static {v0}, Las/j;->b(Las/j;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Las/j;->a([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_32

    .line 86
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Las/f;->a(Ljava/lang/String;)V

    .line 89
    :cond_32
    return-void
.end method
