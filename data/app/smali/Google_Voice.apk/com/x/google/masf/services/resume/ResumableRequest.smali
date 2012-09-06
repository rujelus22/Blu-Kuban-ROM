.class public abstract Lcom/x/google/masf/services/resume/ResumableRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/masf/InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/masf/services/resume/ResumableRequest$Listener;
    }
.end annotation


# static fields
.field public static final COMPLETE_EXTENDABLE_REQUEST:I = 0x3

.field public static final EXTEND_EXTENDABLE_REQUEST:I = 0x2

.field private static final MAXIMUM_ERROR_COUNT:I = 0x3

.field private static final MAXIMUM_WINDOW_SIZE:I = 0x3

.field public static final NEW_EXTENDABLE_REQUEST:I = 0x1

.field public static final NEW_RESUMABLE_REQUEST:I


# instance fields
.field private listener:Lcom/x/google/masf/services/resume/ResumableRequest$Listener;

.field private maximumErrorCount:I

.field private maximumWindowSize:I

.field private requestId:Ljava/lang/String;

.field private requestType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/x/google/masf/services/resume/ResumableRequest;->maximumErrorCount:I

    iput v0, p0, Lcom/x/google/masf/services/resume/ResumableRequest;->maximumWindowSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/masf/services/resume/ResumableRequest;->requestType:I

    return-void
.end method


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized getListener()Lcom/x/google/masf/services/resume/ResumableRequest$Listener;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/masf/services/resume/ResumableRequest;->listener:Lcom/x/google/masf/services/resume/ResumableRequest$Listener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaximumErrorCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/x/google/masf/services/resume/ResumableRequest;->maximumErrorCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaximumWindowSize()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/x/google/masf/services/resume/ResumableRequest;->maximumWindowSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/masf/services/resume/ResumableRequest;->requestId:Ljava/lang/String;
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
    iget v0, p0, Lcom/x/google/masf/services/resume/ResumableRequest;->requestType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getStreamLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized setListener(Lcom/x/google/masf/services/resume/ResumableRequest$Listener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/x/google/masf/services/resume/ResumableRequest;->listener:Lcom/x/google/masf/services/resume/ResumableRequest$Listener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaximumErrorCount(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/x/google/masf/services/resume/ResumableRequest;->maximumErrorCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaximumWindowSize(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/x/google/masf/services/resume/ResumableRequest;->maximumWindowSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRequestId(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/x/google/masf/services/resume/ResumableRequest;->requestId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRequestType(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/x/google/masf/services/resume/ResumableRequest;->requestType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
