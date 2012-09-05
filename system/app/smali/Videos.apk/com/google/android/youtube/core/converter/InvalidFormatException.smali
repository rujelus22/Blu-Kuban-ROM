.class public Lcom/google/android/youtube/core/converter/InvalidFormatException;
.super Lcom/google/android/youtube/core/converter/ParserException;
.source "InvalidFormatException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/ParserException;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/converter/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/ParserException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method
