.class LpV;
.super Lrw;
.source "DownloadFileDocumentOpenerImpl.java"


# instance fields
.field final synthetic a:LpU;


# direct methods
.method constructor <init>(LpU;Landroid/content/Context;LZN;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, LpV;->a:LpU;

    invoke-direct {p0, p2, p3}, Lrw;-><init>(Landroid/content/Context;LZN;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, LpV;->a:LpU;

    invoke-static {v0}, LpU;->a(LpU;)LpP;

    move-result-object v0

    invoke-static {p1}, LpQ;->a(I)LpQ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    .line 162
    return-void
.end method
