.class public Lcom/estrongs/android/pop/ftp/ESFtpShortcut;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/ftp/ESFtpShortcut;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string v0, "mode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_14
    :try_start_14
    invoke-static {}, Lcom/estrongs/android/pop/ftp/l;->a()Lcom/estrongs/android/pop/ftp/l;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/ftp/k;

    invoke-direct {v2, p0, v0, v1}, Lcom/estrongs/android/pop/ftp/k;-><init>(Lcom/estrongs/android/pop/ftp/ESFtpShortcut;ILcom/estrongs/android/pop/ftp/l;)V

    invoke-virtual {v1, p0, v2}, Lcom/estrongs/android/pop/ftp/l;->a(Landroid/content/Context;Lcom/estrongs/android/pop/ftp/n;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_24

    :goto_20
    invoke-virtual {p0}, Lcom/estrongs/android/pop/ftp/ESFtpShortcut;->finish()V

    return-void

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method
