.class final LTj;
.super LTi;
.source "SingleFeedFilter.java"


# instance fields
.field final synthetic c:LTi;

.field final synthetic d:LTi;


# direct methods
.method constructor <init>(Ljava/lang/String;LTi;LTi;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p2, p0, LTj;->c:LTi;

    iput-object p3, p0, LTj;->d:LTi;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LTi;-><init>(Ljava/lang/String;LTj;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, LTj;->c:LTi;

    iget-object v1, p0, LTj;->d:LTi;

    invoke-virtual {v1, p1}, LTi;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, LTi;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
