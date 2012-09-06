.class final Lcom/anddoes/launcher/o;
.super Lcom/a/a/a/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/ApexService;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/ApexService;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    .line 56
    invoke-direct {p0}, Lcom/a/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 62
    const/16 v0, 0x400

    if-ne p1, v0, :cond_5f

    .line 63
    iget-object v0, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0}, Lcom/anddoes/launcher/ApexService;->d(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/a/e;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/anddoes/launcher/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    iget-object v0, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    iget-object v1, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v1}, Lcom/anddoes/launcher/ApexService;->d(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anddoes/launcher/a/e;->b()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/anddoes/launcher/ApexService;->a(Lcom/anddoes/launcher/ApexService;Z)V

    .line 65
    iget-object v0, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    iget-object v1, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v1}, Lcom/anddoes/launcher/ApexService;->e(Lcom/anddoes/launcher/ApexService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/anddoes/launcher/ApexService;->b(Lcom/anddoes/launcher/ApexService;Z)V

    .line 75
    :goto_28
    iget-object v0, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0}, Lcom/anddoes/launcher/ApexService;->f(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/preference/e;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_lvl_check"

    invoke-virtual {v0, v3, v1, v2}, Lcom/anddoes/launcher/preference/e;->a(Ljava/lang/String;J)V

    .line 76
    iget-object v0, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0}, Lcom/anddoes/launcher/ApexService;->a(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/b/a;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 78
    :try_start_3f
    iget-object v0, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0}, Lcom/anddoes/launcher/ApexService;->a(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/b/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/anddoes/launcher/b/a;->b(Lcom/a/a/a/a;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_94

    .line 82
    :goto_48
    :try_start_48
    iget-object v0, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    iget-object v1, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v1}, Lcom/anddoes/launcher/ApexService;->g(Lcom/anddoes/launcher/ApexService;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/ApexService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_53} :catch_8b

    .line 87
    :goto_53
    iget-object v0, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anddoes/launcher/ApexService;->a(Lcom/anddoes/launcher/ApexService;Lcom/anddoes/launcher/b/a;)V

    .line 89
    :cond_59
    iget-object v0, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0}, Lcom/anddoes/launcher/ApexService;->c(Lcom/anddoes/launcher/ApexService;)V

    .line 90
    return-void

    .line 66
    :cond_5f
    const/16 v0, 0x421

    if-ne p1, v0, :cond_77

    .line 67
    iget-object v0, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0}, Lcom/anddoes/launcher/ApexService;->d(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/a/e;->c()V

    .line 68
    iget-object v0, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0, v1}, Lcom/anddoes/launcher/ApexService;->a(Lcom/anddoes/launcher/ApexService;Z)V

    .line 69
    iget-object v0, p0, Lcom/anddoes/launcher/o;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0, v1}, Lcom/anddoes/launcher/ApexService;->b(Lcom/anddoes/launcher/ApexService;Z)V

    goto :goto_28

    .line 70
    :cond_77
    const/16 v0, 0x412

    if-ne p1, v0, :cond_83

    .line 71
    const-string v0, "ApexService"

    const-string v1, "LVL service error."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 73
    :cond_83
    const-string v0, "ApexService"

    const-string v1, "Unknown LVL response code."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 85
    :catch_8b
    move-exception v0

    const-string v0, "ApexService"

    const-string v1, "Unable to unbind from LVL service (already unbound)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :catch_94
    move-exception v0

    goto :goto_48
.end method
