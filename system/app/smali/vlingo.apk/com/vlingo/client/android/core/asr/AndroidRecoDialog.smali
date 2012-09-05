.class public Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;
.super Ljava/lang/Object;
.source "AndroidRecoDialog.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;


# static fields
.field private static sm_Instance:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;


# instance fields
.field private m_DialogStatus:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

.field private m_ProgressText:Ljava/lang/String;

.field private m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

.field private m_State:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->sm_Instance:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    .line 24
    iput-object v1, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_DialogStatus:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;
    .registers 2

    .prologue
    .line 27
    const-class v1, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->sm_Instance:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    if-nez v0, :cond_e

    .line 28
    new-instance v0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    invoke-direct {v0}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;-><init>()V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->sm_Instance:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    .line 29
    :cond_e
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->sm_Instance:Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized activated(Lcom/vlingo/client/asr/ProgressView;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-ne v0, p1, :cond_7

    .line 37
    :goto_5
    monitor-exit p0

    return-void

    .line 35
    :cond_7
    :try_start_7
    iput-object p1, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    .line 36
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_DialogStatus:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    invoke-interface {v0, p0}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;->onStatusDialogPainted(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_5

    .line 33
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deactivated(Lcom/vlingo/client/asr/ProgressView;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    if-eq v0, p1, :cond_b

    .line 49
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 43
    :cond_b
    :try_start_b
    iget v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    if-eqz v0, :cond_1b

    .line 44
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->hide()V

    .line 48
    :goto_12
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_DialogStatus:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    invoke-interface {v0, p0}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;->onStatusDialogClose(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_18

    goto :goto_9

    .line 40
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 46
    :cond_1b
    const/4 v0, 0x0

    :try_start_1c
    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_18

    goto :goto_12
.end method

.method public declared-synchronized getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressText:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()I
    .registers 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hide()V
    .registers 3

    .prologue
    .line 76
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    .line 77
    iget-object v1, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    if-eqz v1, :cond_12

    .line 78
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    .line 79
    .local v0, s:Lcom/vlingo/client/asr/ProgressView;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    .line 80
    iget v1, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    invoke-virtual {v0, v1}, Lcom/vlingo/client/asr/ProgressView;->updateMessage(I)V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_14

    .line 82
    .end local v0           #s:Lcom/vlingo/client/asr/ProgressView;
    :cond_12
    monitor-exit p0

    return-void

    .line 76
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onRecordInfo(III)V
    .registers 5
    .parameter "lastSpeechSample"
    .parameter "numSamples"
    .parameter "lastEnergy"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    if-eqz v0, :cond_9

    .line 113
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vlingo/client/asr/ProgressView;->onRecordInfo(III)V

    .line 115
    :cond_9
    return-void
.end method

.method public popUp()V
    .registers 4

    .prologue
    .line 103
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    .line 104
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_15

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vlingo/client/ui/ProgressScreen;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    .end local v1           #intent:Landroid/content/Intent;
    :cond_15
    return-void
.end method

.method public declared-synchronized setCallback(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_DialogStatus:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMessage(ZLjava/lang/String;)V
    .registers 5
    .parameter "recording"
    .parameter "message"

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressText:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    if-nez v0, :cond_c

    .line 91
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->popUp()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_17

    .line 100
    :goto_a
    monitor-exit p0

    return-void

    .line 94
    :cond_c
    if-nez p1, :cond_1a

    :try_start_e
    iget v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 95
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->setProcessing()V
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_17

    goto :goto_a

    .line 89
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 98
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    iget v1, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    invoke-virtual {v0, v1}, Lcom/vlingo/client/asr/ProgressView;->updateMessage(I)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_17

    goto :goto_a
.end method

.method public setMessageAndNote(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "recording"
    .parameter "message"
    .parameter "note"

    .prologue
    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->setMessage(ZLjava/lang/String;)V

    .line 121
    return-void
.end method

.method public setNoteText(Ljava/lang/String;)V
    .registers 2
    .parameter "note"

    .prologue
    .line 126
    return-void
.end method

.method public setProcessing()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 60
    iget v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    if-ne v0, v1, :cond_6

    .line 65
    :cond_5
    :goto_5
    return-void

    .line 62
    :cond_6
    iput v1, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    .line 63
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    if-eqz v0, :cond_5

    .line 64
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    iget v1, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    invoke-virtual {v0, v1}, Lcom/vlingo/client/asr/ProgressView;->updateMessage(I)V

    goto :goto_5
.end method

.method public setRecording(Z)V
    .registers 5
    .parameter "recording"

    .prologue
    const/4 v2, 0x2

    .line 52
    if-eqz p1, :cond_19

    iget v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    if-eq v0, v2, :cond_19

    iget v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 53
    iput v2, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    .line 54
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    if-eqz v0, :cond_19

    .line 55
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;

    iget v1, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    invoke-virtual {v0, v1}, Lcom/vlingo/client/asr/ProgressView;->updateMessage(I)V

    .line 57
    :cond_19
    return-void
.end method

.method public setTimings(Lcom/vlingo/client/core/recognizer/TimingRepository;)V
    .registers 2
    .parameter "timings"

    .prologue
    .line 131
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .registers 3
    .parameter "initialMessage"

    .prologue
    .line 134
    const/4 v0, 0x1

    iput v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->m_State:I

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->setMessage(ZLjava/lang/String;)V

    .line 136
    return-void
.end method
