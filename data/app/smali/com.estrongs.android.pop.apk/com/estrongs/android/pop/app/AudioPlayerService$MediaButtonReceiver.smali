.class public Lcom/estrongs/android/pop/app/AudioPlayerService$MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    const-string v2, "EEE"

    const-string v3, "mediaButtonReceiver called"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v1, :cond_27

    sget-object v1, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v1

    if-nez v1, :cond_28

    :cond_27
    :goto_27
    return-void

    :cond_28
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    const/16 v0, 0x57

    if-ne v0, v1, :cond_3d

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Landroid/media/MediaPlayer;)Z

    :cond_3d
    const/16 v0, 0x55

    if-ne v0, v1, :cond_46

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->s()V

    :cond_46
    const/16 v0, 0x4f

    if-ne v0, v1, :cond_57

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_70

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->v()V

    :cond_57
    :goto_57
    const/16 v0, 0x58

    if-ne v0, v1, :cond_66

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    sget-object v2, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->e(I)Z

    :cond_66
    const/16 v0, 0x56

    if-ne v0, v1, :cond_27

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->r()V

    goto :goto_27

    :cond_70
    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->s()V

    goto :goto_57
.end method
