.class LIw;
.super Ljava/lang/Object;
.source "HoneycombActionBarHelper.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# instance fields
.field final synthetic a:LIj;

.field final synthetic a:LIu;

.field final synthetic a:[Landroid/accounts/Account;


# direct methods
.method constructor <init>(LIu;[Landroid/accounts/Account;LIj;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, LIw;->a:LIu;

    iput-object p2, p0, LIw;->a:[Landroid/accounts/Account;

    iput-object p3, p0, LIw;->a:LIj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, LIw;->a:LIu;

    iget-object v0, v0, LIu;->a:Landroid/app/Activity;

    check-cast v0, LcK;

    invoke-interface {v0}, LcK;->a()Lans;

    move-result-object v0

    iget-object v1, p0, LIw;->a:LIu;

    iget-object v1, v1, LIu;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 216
    iget-object v0, p0, LIw;->a:[Landroid/accounts/Account;

    aget-object v0, v0, p1

    .line 217
    iget-object v1, p0, LIw;->a:LIu;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, LIu;->a(Landroid/widget/Button;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, LIw;->a:LIj;

    invoke-interface {v1, v0}, LIj;->a(Landroid/accounts/Account;)V

    .line 219
    const/4 v0, 0x1

    return v0
.end method
