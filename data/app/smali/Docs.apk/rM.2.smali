.class LrM;
.super Ljava/lang/Object;
.source "AbstractDriveAppOpenerOption.java"

# interfaces
.implements LnQ;


# instance fields
.field private a:Landroid/content/Intent;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LkR;

.field final synthetic a:LpP;

.field final synthetic a:LrL;


# direct methods
.method constructor <init>(LrL;Ljava/lang/String;LpP;LkR;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, LrM;->a:LrL;

    iput-object p2, p0, LrM;->a:Ljava/lang/String;

    iput-object p3, p0, LrM;->a:LpP;

    iput-object p4, p0, LrM;->a:LkR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 7
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 63
    if-nez p1, :cond_22

    .line 64
    iget-object v1, p0, LrM;->a:LrL;

    iget-object v1, v1, LrL;->a:LrN;

    iget-object v2, p0, LrM;->a:LpP;

    iget-object v3, p0, LrM;->a:LrL;

    iget-object v3, v3, LrL;->a:Ljava/lang/String;

    iget-object v4, p0, LrM;->a:LkR;

    invoke-interface {v1, v2, v3, v4}, LrN;->a(LpP;Ljava/lang/String;LkR;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    if-nez v1, :cond_16

    .line 73
    :goto_15
    return v0

    .line 68
    :cond_16
    iget-object v0, p0, LrM;->a:LrL;

    iget-object v2, p0, LrM;->a:LkR;

    invoke-virtual {v0, v2, v1}, LrL;->a(LkR;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, LrM;->a:Landroid/content/Intent;

    .line 69
    const/4 v0, 0x1

    goto :goto_15

    .line 71
    :cond_22
    iget-object v1, p0, LrM;->a:Landroid/content/Intent;

    invoke-static {v1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, LrM;->a:LpP;

    iget-object v2, p0, LrM;->a:Landroid/content/Intent;

    invoke-interface {v1, v2}, LpP;->a(Landroid/content/Intent;)V

    goto :goto_15
.end method

.method public a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 53
    iget-object v0, p0, LrM;->a:LrL;

    iget-object v0, v0, LrL;->a:Landroid/content/Context;

    sget v1, LcY;->opening_document:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LrM;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(LZN;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
