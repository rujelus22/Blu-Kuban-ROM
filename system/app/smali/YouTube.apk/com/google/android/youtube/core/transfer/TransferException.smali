.class public Lcom/google/android/youtube/core/transfer/TransferException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final fatal:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    iput-boolean p3, p0, Lcom/google/android/youtube/core/transfer/TransferException;->fatal:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput-boolean p2, p0, Lcom/google/android/youtube/core/transfer/TransferException;->fatal:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 23
    iput-boolean p2, p0, Lcom/google/android/youtube/core/transfer/TransferException;->fatal:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/google/android/youtube/core/transfer/TransferException;->fatal:Z

    .line 14
    return-void
.end method
