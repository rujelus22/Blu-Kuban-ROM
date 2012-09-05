.class public Lcom/google/android/voicesearch/GoogleRecognitionService;
.super Landroid/speech/RecognitionService;
.source "GoogleRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;
    }
.end annotation


# instance fields
.field private mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

.field private mVoiceSearchApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/speech/RecognitionService;-><init>()V

    .line 102
    return-void
.end method


# virtual methods
.method protected declared-synchronized onCancel(Landroid/speech/RecognitionService$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    new-instance v1, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;

    invoke-direct {v1, p1}, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;-><init>(Landroid/speech/RecognitionService$Callback;)V

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->cancel(Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->releaseMicrophone()V

    .line 76
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->releaseNetworking()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 77
    monitor-exit p0

    return-void

    .line 74
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/voicesearch/GoogleRecognitionService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/VoiceSearchApplication;

    iput-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mVoiceSearchApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

    .line 89
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mVoiceSearchApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer()Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->createRecognitionController()Lcom/google/android/voicesearch/speechservice/RecognitionController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    .line 91
    return-void
.end method

.method public declared-synchronized onDestroy()V
    .registers 2

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->releaseMicrophone()V

    .line 97
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->releaseNetworking()V

    .line 98
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->destroy()V

    .line 99
    invoke-super {p0}, Landroid/speech/RecognitionService;->onDestroy()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 100
    monitor-exit p0

    return-void

    .line 96
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
    .registers 5
    .parameter "intent"
    .parameter "callback"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "android.speech.action.ANALYZE_SPEECH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 65
    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :cond_1e
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    new-instance v1, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;

    invoke-direct {v1, p2}, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;-><init>(Landroid/speech/RecognitionService$Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->startListening(Landroid/content/Intent;Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 69
    monitor-exit p0

    return-void

    .line 61
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onStopListening(Landroid/speech/RecognitionService$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/voicesearch/GoogleRecognitionService;->mRecognitionController:Lcom/google/android/voicesearch/speechservice/RecognitionController;

    new-instance v1, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;

    invoke-direct {v1, p1}, Lcom/google/android/voicesearch/GoogleRecognitionService$RecognitionCallback;-><init>(Landroid/speech/RecognitionService$Callback;)V

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->stopListening(Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
