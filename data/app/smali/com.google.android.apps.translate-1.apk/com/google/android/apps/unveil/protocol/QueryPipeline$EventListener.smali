.class public abstract Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;
.super Lcom/google/android/apps/unveil/protocol/QueryListener;
.source "QueryPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/QueryPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/QueryListener;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onImageCropped(Lcom/google/android/apps/unveil/env/Picture;)V
.end method

.method public abstract onImageFailed()V
.end method

.method public abstract onImageReady(Lcom/google/android/apps/unveil/env/Picture;Lcom/google/android/apps/unveil/protocol/QueryBuilder;)V
.end method
