.class LOx;
.super Lcg;
.source "OnlineSearch.java"


# instance fields
.field final synthetic a:LOj;

.field final synthetic a:LOw;

.field final synthetic a:LTM;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(LOw;Ljava/lang/String;LOj;Ljava/lang/String;LTM;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, LOx;->a:LOw;

    iput-object p3, p0, LOx;->a:LOj;

    iput-object p4, p0, LOx;->a:Ljava/lang/String;

    iput-object p5, p0, LOx;->a:LTM;

    iput-object p6, p0, LOx;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcg;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 7

    .prologue
    .line 79
    iget-object v0, p0, LOx;->a:LOj;

    invoke-interface {v0}, LOj;->a()V

    .line 81
    :try_start_5
    new-instance v0, Landroid/content/SyncResult;

    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    .line 82
    new-instance v1, LOy;

    invoke-direct {v1, p0}, LOy;-><init>(LOx;)V

    .line 97
    new-instance v2, LOA;

    invoke-direct {v2, v1}, LOA;-><init>(LOB;)V

    .line 98
    iget-object v1, p0, LOx;->a:Ljava/lang/String;

    invoke-static {v1}, LOw;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 99
    iget-object v3, p0, LOx;->a:LTM;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, LOx;->b:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-interface {v3, v1, v4, v2, v5}, LTM;->a(Ljava/lang/String;Ljava/lang/String;LTN;I)V

    .line 100
    iget-object v1, p0, LOx;->a:LTM;

    invoke-interface {v1, v0}, LTM;->a(Landroid/content/SyncResult;)V

    .line 101
    iget-object v0, p0, LOx;->a:LOw;

    invoke-static {v0}, LOw;->a(LOw;)Lcg;

    move-result-object v0

    invoke-virtual {v0}, Lcg;->a()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 105
    iget-object v0, p0, LOx;->a:LOw;

    iget-object v1, p0, LOx;->a:LOj;

    invoke-static {v0, v1}, LOw;->a(LOw;LOj;)V

    .line 115
    :goto_3e
    return-void

    .line 107
    :cond_3f
    iget-object v0, p0, LOx;->a:LOj;

    invoke-interface {v0}, LOj;->c()V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_44} :catch_45
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_44} :catch_4e

    goto :goto_3e

    .line 109
    :catch_45
    move-exception v0

    .line 110
    iget-object v0, p0, LOx;->a:LOw;

    iget-object v1, p0, LOx;->a:LOj;

    invoke-static {v0, v1}, LOw;->a(LOw;LOj;)V

    goto :goto_3e

    .line 111
    :catch_4e
    move-exception v0

    .line 112
    const-string v1, "OnlineSearch"

    const-string v2, "Search failed"

    invoke-static {v1, v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    iget-object v1, p0, LOx;->a:LOj;

    invoke-interface {v1, v0}, LOj;->a(Ljava/lang/Exception;)V

    goto :goto_3e
.end method
