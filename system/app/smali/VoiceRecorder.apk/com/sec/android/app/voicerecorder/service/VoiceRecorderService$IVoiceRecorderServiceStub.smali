.class Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;
.super Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;
.source "VoiceRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IVoiceRecorderServiceStub"
.end annotation


# instance fields
.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;Landroid/os/RemoteCallbackList;)V
    .registers 4
    .parameter "service"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1552
    .local p2, callbacks:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;>;"
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;-><init>()V

    .line 1553
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 1554
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 1555
    return-void
.end method


# virtual methods
.method public cancelRecording()Z
    .registers 2

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z

    move-result v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #calls: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getFileName()Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$2000(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #calls: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getFilePath()Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1900(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #calls: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getFileSize()J
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$2200(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSavedFileUriString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #calls: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getLastSavedFileUriString()Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$2100(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAmplitude()I
    .registers 2

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #calls: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getMaxAmplitude()I
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$1800(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I

    move-result v0

    return v0
.end method

.method public getMediaRecorderState()I
    .registers 2

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    return v0
.end method

.method public getRecDuration()J
    .registers 3

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getRecDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public hideNotification()Z
    .registers 2

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->hideNotification()Z

    move-result v0

    return v0
.end method

.method public initRecording(ZJIZ)Z
    .registers 12
    .parameter "isFileSizeLimited"
    .parameter "maxFileSize"
    .parameter "maxRecordTime"
    .parameter "isHighQuality"

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->initRecording(ZJIZ)Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .registers 2

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onService(I)Ljava/lang/String;
    .registers 3
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1590
    const/4 v0, 0x0

    return-object v0
.end method

.method public pauseRecording()Z
    .registers 2

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->pauseRecording()Z

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;)V
    .registers 3
    .parameter "vrServiceCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1580
    if-eqz p1, :cond_d

    .line 1581
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1582
    :cond_d
    return-void
.end method

.method public registerNotification()Z
    .registers 2

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->registerNotification()Z

    move-result v0

    return v0
.end method

.method public resetRecording()Z
    .registers 2

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->releaseMediaRecorder()Z

    move-result v0

    return v0
.end method

.method public resumeRecording()Z
    .registers 2

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->resumeRecording()Z

    move-result v0

    return v0
.end method

.method public saveRecording()Z
    .registers 2

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->saveRecording()Z

    move-result v0

    return v0
.end method

.method public startRecording()Z
    .registers 2

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->startRecording()Z

    move-result v0

    return v0
.end method

.method public stopPlay()V
    .registers 2

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->stopPlay()V

    return-void
.end method

.method public unregisterCallback(Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;)V
    .registers 3
    .parameter "vrServiceCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1585
    if-eqz p1, :cond_d

    .line 1586
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1587
    :cond_d
    return-void
.end method
