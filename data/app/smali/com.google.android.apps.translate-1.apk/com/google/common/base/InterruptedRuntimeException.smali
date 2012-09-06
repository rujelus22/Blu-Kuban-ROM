.class public Lcom/google/common/base/InterruptedRuntimeException;
.super Ljava/lang/RuntimeException;
.source "InterruptedRuntimeException.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation runtime Lcom/google/common/annotations/Strongly;
    contact = "java-libraries-discuss"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/InterruptedIOException;)V
    .registers 3
    .parameter "cause"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 119
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/InterruptedException;)V
    .registers 3
    .parameter "cause"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InterruptedIOException;)V
    .registers 4
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/InterruptedException;)V
    .registers 4
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 131
    return-void
.end method
