.class public Lcom/google/android/apps/plus/network/NetworkException;
.super Ljava/io/IOException;
.source "NetworkException.java"


# static fields
.field private static final serialVersionUID:J = -0x238301abc50f5ac7L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/network/NetworkException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 27
    return-void
.end method
