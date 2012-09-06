.class public Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException;
.super Ljava/lang/Exception;
.source "QueryPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/QueryPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPendingQueryException"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
