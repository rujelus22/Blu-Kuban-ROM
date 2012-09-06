.class public final Lcom/google/android/youtube/core/player/DirectorException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final reason:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DirectorException;->reason:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DirectorException;->reason:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;Ljava/lang/Throwable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 33
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DirectorException;->reason:Lcom/google/android/youtube/core/player/DirectorException$ErrorReason;

    .line 34
    return-void
.end method
