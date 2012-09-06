.class public abstract Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;
.super Ljava/lang/Object;
.source "ThumbnailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/ThumbnailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ThumbnailListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailLoading()V
    .registers 1

    .prologue
    .line 184
    return-void
.end method

.method public abstract onThumbnailReady(Lcom/google/android/apps/unveil/env/Picture;)V
.end method
