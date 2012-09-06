.class public Lcom/estrongs/android/pop/ftp/g;
.super Landroid/os/Binder;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/ftp/ESFtpService;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/ftp/ESFtpService;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/g;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/estrongs/android/pop/ftp/ESFtpService;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/g;->a:Lcom/estrongs/android/pop/ftp/ESFtpService;

    return-object v0
.end method
