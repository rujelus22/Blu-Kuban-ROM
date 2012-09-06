.class LTJ;
.super LcI;
.source "DocsSyncAdapter.java"


# instance fields
.field final synthetic a:LTI;


# direct methods
.method constructor <init>(LTI;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, LTJ;->a:LTI;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 122
    iget-object v0, p0, LTJ;->a:LTI;

    iget-object v0, v0, LTI;->a:LTH;

    iget-object v1, p0, LTJ;->a:LTI;

    iget-object v1, v1, LTI;->a:Landroid/accounts/Account;

    iget-object v2, p0, LTJ;->a:LTI;

    iget-object v2, v2, LTI;->a:Landroid/os/Bundle;

    iget-object v3, p0, LTJ;->a:LTI;

    iget-object v3, v3, LTI;->a:Ljava/lang/String;

    iget-object v4, p0, LTJ;->a:LTI;

    iget-object v4, v4, LTI;->a:Landroid/content/SyncResult;

    invoke-static {v0, v1, v2, v3, v4}, LTH;->a(LTH;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V

    .line 123
    return-void
.end method
