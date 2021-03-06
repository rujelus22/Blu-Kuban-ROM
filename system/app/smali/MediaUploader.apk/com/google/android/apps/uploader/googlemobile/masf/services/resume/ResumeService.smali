.class public abstract Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;
.super Ljava/lang/Object;


# instance fields
.field private requestIdStore:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore;

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->requestIdStore:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore;

    return-void
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 1

    return-void
.end method


# virtual methods
.method protected declared-synchronized addClientTicket(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeService.addClientTicketMap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_24

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->requestIdStore:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore;->setServerId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract cancelRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;)V
.end method

.method public abstract disposeRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;)V
.end method

.method public abstract getChunkSize()I
.end method

.method public getClientTickets()[Ljava/lang/String;
    .registers 2

    const-string v0, "ResumeService.getRequestIds()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->requestIdStore:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore;->getClientIds()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getServerTicket(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeService.getServerTicket("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->requestIdStore:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore;->getServerId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_29

    move-result-object v0

    :goto_25
    monitor-exit p0

    return-object v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_25

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized removeClientTicket(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeService.removeClientTicketMap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_24

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumeService;->requestIdStore:Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/RequestIdStore;->removeClientId(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract setChunkSize(I)V
.end method

.method public abstract submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;)V
.end method
