.class public Lamb;
.super Ljava/lang/RuntimeException;
.source "UncheckedExecutionException.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method
