.class Lcom/estrongs/android/pop/ftp/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/ftp/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/ftp/l;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/m;->a:Lcom/estrongs/android/pop/ftp/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/m;->a:Lcom/estrongs/android/pop/ftp/l;

    check-cast p2, Lcom/estrongs/android/pop/ftp/g;

    invoke-virtual {p2}, Lcom/estrongs/android/pop/ftp/g;->a()Lcom/estrongs/android/pop/ftp/ESFtpService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/ftp/l;->a(Lcom/estrongs/android/pop/ftp/l;Lcom/estrongs/android/pop/ftp/ESFtpService;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/m;->a:Lcom/estrongs/android/pop/ftp/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/l;->a(Lcom/estrongs/android/pop/ftp/l;)Lcom/estrongs/android/pop/ftp/ESFtpService;

    move-result-object v0

    if-nez v0, :cond_14

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/m;->a:Lcom/estrongs/android/pop/ftp/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/ftp/l;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/m;->a:Lcom/estrongs/android/pop/ftp/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/l;->b(Lcom/estrongs/android/pop/ftp/l;)Lcom/estrongs/android/pop/ftp/n;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/m;->a:Lcom/estrongs/android/pop/ftp/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/l;->b(Lcom/estrongs/android/pop/ftp/l;)Lcom/estrongs/android/pop/ftp/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/ftp/n;->a()V

    :cond_2a
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/m;->a:Lcom/estrongs/android/pop/ftp/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/ftp/l;->a(Lcom/estrongs/android/pop/ftp/l;Lcom/estrongs/android/pop/ftp/n;)V

    goto :goto_13
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/m;->a:Lcom/estrongs/android/pop/ftp/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/ftp/l;->a(Lcom/estrongs/android/pop/ftp/l;Lcom/estrongs/android/pop/ftp/ESFtpService;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/m;->a:Lcom/estrongs/android/pop/ftp/l;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/ftp/l;->b:Z

    return-void
.end method
