.class Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/library/LibraryReplicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplicationRequest"
.end annotation


# instance fields
.field public debugTag:Ljava/lang/String;

.field public final finishRunnable:Ljava/lang/Runnable;

.field public final isRetry:Z

.field public final libraryIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/String;)V
    .registers 5
    .parameter "libraryIds"
    .parameter "isRetry"
    .parameter "finishRunnable"
    .parameter "debugTag"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->libraryIds:[Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    .line 84
    iput-boolean p2, p0, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->isRetry:Z

    .line 85
    iput-object p4, p0, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->debugTag:Ljava/lang/String;

    .line 86
    return-void
.end method
