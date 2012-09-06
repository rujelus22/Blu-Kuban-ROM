.class LzE;
.super Ljava/lang/Object;
.source "UnsupportedTableElement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LzD;


# direct methods
.method constructor <init>(LzD;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, LzE;->a:LzD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, LzE;->a:LzD;

    iget-object v0, v0, LzD;->a:LwH;

    invoke-interface {v0}, LwH;->a()LyJ;

    move-result-object v0

    .line 46
    if-nez v0, :cond_12

    .line 47
    const-string v0, "UnsupportedTableElement"

    const-string v1, "WebViewLauncher is not defined."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_11
    :goto_11
    return-void

    .line 50
    :cond_12
    iget-object v1, p0, LzE;->a:LzD;

    invoke-static {v1}, LzD;->a(LzD;)Lxp;

    move-result-object v1

    iget-object v2, p0, LzE;->a:LzD;

    iget-object v2, v2, LzD;->a:Lyg;

    iget-object v3, p0, LzE;->a:LzD;

    iget-object v3, v3, LzD;->a:LBH;

    invoke-virtual {v3}, LBH;->c()I

    move-result v3

    iget-object v4, p0, LzE;->a:LzD;

    iget-object v4, v4, LzD;->a:LBH;

    invoke-virtual {v4}, LBH;->d()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lxp;->a(Lyg;II)Ljava/lang/String;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_11

    .line 53
    invoke-interface {v0, v1}, LyJ;->a(Ljava/lang/String;)V

    goto :goto_11
.end method
