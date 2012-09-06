.class abstract LrL;
.super Lsq;
.source "AbstractDriveAppOpenerOption.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final a:Ljava/lang/String;

.field protected final a:LrN;


# direct methods
.method constructor <init>(Lss;Landroid/content/Context;LrN;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lsq;-><init>(Lss;)V

    .line 32
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, LrL;->a:Landroid/content/Context;

    .line 33
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LrN;

    iput-object v0, p0, LrL;->a:LrN;

    .line 34
    invoke-static {p4}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LrL;->a:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(LpP;LkR;Landroid/os/Bundle;)LalU;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LpP;",
            "LkR;",
            "Landroid/os/Bundle;",
            ")",
            "LalU",
            "<",
            "LnQ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p2}, LkR;->i()Ljava/lang/String;

    .line 43
    invoke-virtual {p2}, LkR;->c()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, LrM;

    invoke-direct {v1, p0, v0, p1, p2}, LrM;-><init>(LrL;Ljava/lang/String;LpP;LkR;)V

    .line 77
    invoke-static {v1}, LalO;->a(Ljava/lang/Object;)LalU;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(LkR;Landroid/net/Uri;)Landroid/content/Intent;
.end method

.method final a()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method
