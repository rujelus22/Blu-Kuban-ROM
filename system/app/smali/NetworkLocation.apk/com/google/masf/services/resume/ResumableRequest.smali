.class public abstract Lcom/google/masf/services/resume/ResumableRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/masf/InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/masf/services/resume/ResumableRequest$Listener;
    }
.end annotation


# instance fields
.field private listener:Lcom/google/masf/services/resume/ResumableRequest$Listener;

.field private maximumErrorCount:I

.field private maximumWindowSize:I

.field private requestType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/masf/services/resume/ResumableRequest;->maximumErrorCount:I

    iput v0, p0, Lcom/google/masf/services/resume/ResumableRequest;->maximumWindowSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/masf/services/resume/ResumableRequest;->requestType:I

    return-void
.end method


# virtual methods
.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized getListener()Lcom/google/masf/services/resume/ResumableRequest$Listener;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/masf/services/resume/ResumableRequest;->listener:Lcom/google/masf/services/resume/ResumableRequest$Listener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestType()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/masf/services/resume/ResumableRequest;->requestType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
