.class public LalK;
.super Ljava/lang/Error;
.source "ExecutionError.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Error;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method
