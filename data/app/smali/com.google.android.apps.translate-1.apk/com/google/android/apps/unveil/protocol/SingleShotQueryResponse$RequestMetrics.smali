.class public Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;
.super Ljava/lang/Object;
.source "SingleShotQueryResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestMetrics"
.end annotation


# instance fields
.field public final imageSize:Lcom/google/android/apps/unveil/env/Size;

.field public final requestByteSize:I

.field public final requestRoundTripTime:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/Size;IJ)V
    .registers 5
    .parameter "imageSize"
    .parameter "requestByteSize"
    .parameter "requestRoundTripTime"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    .line 28
    iput p2, p0, Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;->requestByteSize:I

    .line 29
    iput-wide p3, p0, Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;->requestRoundTripTime:J

    .line 30
    return-void
.end method
