.class Lcom/estrongs/android/pop/app/p;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EEE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call status change:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v0, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d(Lcom/estrongs/android/pop/app/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iput-boolean v4, v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->s()V

    :cond_38
    :goto_38
    return-void

    :cond_39
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d(Lcom/estrongs/android/pop/app/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    iput-boolean v4, v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/p;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->s()V

    goto :goto_38
.end method
