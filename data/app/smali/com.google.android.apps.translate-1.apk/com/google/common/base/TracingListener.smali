.class public abstract Lcom/google/common/base/TracingListener;
.super Ljava/lang/Object;
.source "TracingListener.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleStartTracer(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5
    .parameter "type"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "comment"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "startTimeMs"
    .end parameter

    .prologue
    .line 53
    return-void
.end method

.method public handleStopTracer(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 7
    .parameter "type"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "comment"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "stopTimeMs"
    .end parameter
    .parameter "elapsedTimeMs"
    .end parameter

    .prologue
    .line 68
    return-void
.end method
