.class public Lcom/google/android/street/StreetView$Status;
.super Ljava/lang/Object;
.source "StreetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/StreetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# instance fields
.field public mBadPanorama:Z

.field public mDisabled:Z

.field public mGotNetworkConnection:Z

.field public mGotPanoramaConfig:Z

.field public mThrottling:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .registers 2

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/google/android/street/StreetView$Status;->mBadPanorama:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/street/StreetView$Status;->mThrottling:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/street/StreetView$Status;->mDisabled:Z

    if-eqz v0, :cond_f

    .line 318
    :cond_c
    const/16 v0, 0x2710

    .line 326
    :goto_e
    return v0

    .line 320
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/street/StreetView$Status;->mGotNetworkConnection:Z

    if-nez v0, :cond_15

    .line 321
    const/4 v0, 0x0

    goto :goto_e

    .line 323
    :cond_15
    iget-boolean v0, p0, Lcom/google/android/street/StreetView$Status;->mGotPanoramaConfig:Z

    if-nez v0, :cond_1c

    .line 324
    const/16 v0, 0x3e8

    goto :goto_e

    .line 326
    :cond_1c
    const/16 v0, 0x7d0

    goto :goto_e
.end method
