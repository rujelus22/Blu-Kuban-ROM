.class final Lcom/anddoes/launcher/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/ApexService;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/ApexService;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/n;->a:Lcom/anddoes/launcher/ApexService;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/anddoes/launcher/n;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {p2}, Lcom/anddoes/launcher/b/b;->a(Landroid/os/IBinder;)Lcom/anddoes/launcher/b/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anddoes/launcher/ApexService;->a(Lcom/anddoes/launcher/ApexService;Lcom/anddoes/launcher/b/a;)V

    .line 39
    :try_start_9
    iget-object v0, p0, Lcom/anddoes/launcher/n;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0}, Lcom/anddoes/launcher/ApexService;->a(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/n;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v1}, Lcom/anddoes/launcher/ApexService;->b(Lcom/anddoes/launcher/ApexService;)Lcom/a/a/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anddoes/launcher/b/a;->a(Lcom/a/a/a/a;)V

    .line 40
    iget-object v0, p0, Lcom/anddoes/launcher/n;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0}, Lcom/anddoes/launcher/ApexService;->a(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/b/a;

    move-result-object v0

    invoke-static {}, Lcom/anddoes/launcher/a/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anddoes/launcher/b/a;->a(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_25} :catch_26

    .line 45
    :goto_25
    return-void

    .line 42
    :catch_26
    move-exception v0

    const-string v0, "ApexService"

    const-string v1, "LVL service might have crashed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/anddoes/launcher/n;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0}, Lcom/anddoes/launcher/ApexService;->c(Lcom/anddoes/launcher/ApexService;)V

    goto :goto_25
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/anddoes/launcher/n;->a:Lcom/anddoes/launcher/ApexService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anddoes/launcher/ApexService;->a(Lcom/anddoes/launcher/ApexService;Lcom/anddoes/launcher/b/a;)V

    .line 51
    const-string v0, "ApexService"

    const-string v1, "LVL service unexpectedly disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/anddoes/launcher/n;->a:Lcom/anddoes/launcher/ApexService;

    invoke-static {v0}, Lcom/anddoes/launcher/ApexService;->c(Lcom/anddoes/launcher/ApexService;)V

    .line 53
    return-void
.end method
