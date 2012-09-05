.class Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;
.super Ljava/lang/Object;
.source "Cameras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/Cameras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectedCameras"
.end annotation


# instance fields
.field public final frontFacingCameraId:I

.field public final frontFacingCameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

.field public final rearFacingCameraId:I

.field public final rearFacingCameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;


# direct methods
.method public constructor <init>(ILcom/google/android/apps/plus/hangout/Cameras$CameraProperties;ILcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)V
    .registers 5
    .parameter "rearId"
    .parameter "rearProperties"
    .parameter "frontId"
    .parameter "frontProperties"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;->rearFacingCameraId:I

    .line 31
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;->rearFacingCameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    .line 32
    iput p3, p0, Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;->frontFacingCameraId:I

    .line 33
    iput-object p4, p0, Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;->frontFacingCameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    .line 34
    return-void
.end method
