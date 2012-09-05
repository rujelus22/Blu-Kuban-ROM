.class public Lcom/vlingo/client/ui/ProgressScreen;
.super Lcom/vlingo/client/ui/VLActivity;
.source "ProgressScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/ui/ProgressScreen$1;,
        Lcom/vlingo/client/ui/ProgressScreen$RecoHandler;
    }
.end annotation


# static fields
.field private static ReloadProgressView:Z

.field private static sm_ProgressView:Lcom/vlingo/client/asr/ProgressView;

.field private static sm_RecoHandler:Lcom/vlingo/client/ui/ProgressScreen$RecoHandler;


# instance fields
.field private m_CurrentView:Lcom/vlingo/client/asr/ProgressView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 26
    sput-object v1, Lcom/vlingo/client/ui/ProgressScreen;->sm_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    .line 27
    new-instance v0, Lcom/vlingo/client/ui/ProgressScreen$RecoHandler;

    invoke-direct {v0, v1}, Lcom/vlingo/client/ui/ProgressScreen$RecoHandler;-><init>(Lcom/vlingo/client/ui/ProgressScreen$1;)V

    sput-object v0, Lcom/vlingo/client/ui/ProgressScreen;->sm_RecoHandler:Lcom/vlingo/client/ui/ProgressScreen$RecoHandler;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vlingo/client/ui/ProgressScreen;->ReloadProgressView:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/ui/ProgressScreen;->m_CurrentView:Lcom/vlingo/client/asr/ProgressView;

    .line 118
    return-void
.end method

.method public static ReloadProgressView()V
    .registers 1

    .prologue
    .line 115
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vlingo/client/ui/ProgressScreen;->ReloadProgressView:Z

    .line 116
    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 21
    invoke-static {}, Lcom/vlingo/client/ui/ProgressScreen;->inflate()V

    return-void
.end method

.method private static declared-synchronized inflate()V
    .registers 4

    .prologue
    .line 105
    const-class v1, Lcom/vlingo/client/ui/ProgressScreen;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/ui/ProgressScreen;->sm_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/vlingo/client/ui/ProgressScreen;->ReloadProgressView:Z

    if-eqz v0, :cond_29

    .line 106
    :cond_b
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    const v2, 0x7f030036

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/asr/ProgressView;

    sput-object v0, Lcom/vlingo/client/ui/ProgressScreen;->sm_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    .line 107
    sget-object v0, Lcom/vlingo/client/ui/ProgressScreen;->sm_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/ui/ProgressScreen;->sm_RecoHandler:Lcom/vlingo/client/ui/ProgressScreen$RecoHandler;

    invoke-virtual {v0, v2, v3}, Lcom/vlingo/client/asr/ProgressView;->init(Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;Lcom/vlingo/client/android/core/asr/ProgressHandler;)V

    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vlingo/client/ui/ProgressScreen;->ReloadProgressView:Z
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    .line 110
    :cond_29
    monitor-exit v1

    return-void

    .line 105
    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget-object v0, Lcom/vlingo/client/ui/ProgressScreen;->sm_RecoHandler:Lcom/vlingo/client/ui/ProgressScreen$RecoHandler;

    invoke-virtual {v0, p0}, Lcom/vlingo/client/ui/ProgressScreen$RecoHandler;->init(Lcom/vlingo/client/ui/ProgressScreen;)V

    .line 41
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/ProgressScreen;->setVolumeControlStream(I)V

    .line 43
    invoke-static {}, Lcom/vlingo/client/ui/ProgressScreen;->inflate()V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/ProgressScreen;->requestWindowFeature(I)Z

    .line 46
    sget-object v0, Lcom/vlingo/client/ui/ProgressScreen;->sm_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/ProgressScreen;->setContentView(Landroid/view/View;)V

    .line 50
    sget-object v0, Lcom/vlingo/client/ui/ProgressScreen;->sm_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    invoke-virtual {v0}, Lcom/vlingo/client/asr/ProgressView;->show()V

    .line 51
    sget-object v0, Lcom/vlingo/client/ui/ProgressScreen;->sm_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    iput-object v0, p0, Lcom/vlingo/client/ui/ProgressScreen;->m_CurrentView:Lcom/vlingo/client/asr/ProgressView;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/ui/ProgressScreen;->sm_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    .line 53
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 97
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/ui/ProgressScreen;->m_CurrentView:Lcom/vlingo/client/asr/ProgressView;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->deactivated(Lcom/vlingo/client/asr/ProgressView;)V

    .line 98
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onPause()V

    .line 99
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->resumeAudioPlayback()V

    .line 100
    return-void
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onRestart()V

    .line 67
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 81
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onResume()V

    .line 82
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/ui/ProgressScreen;->m_CurrentView:Lcom/vlingo/client/asr/ProgressView;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->activated(Lcom/vlingo/client/asr/ProgressView;)V

    .line 83
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 73
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onStart()V

    .line 74
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/ui/ProgressScreen;->m_CurrentView:Lcom/vlingo/client/asr/ProgressView;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->activated(Lcom/vlingo/client/asr/ProgressView;)V

    .line 75
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 89
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/ui/ProgressScreen;->m_CurrentView:Lcom/vlingo/client/asr/ProgressView;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->deactivated(Lcom/vlingo/client/asr/ProgressView;)V

    .line 90
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onStop()V

    .line 91
    return-void
.end method
