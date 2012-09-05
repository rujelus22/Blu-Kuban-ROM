.class public Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;
.super Ljava/lang/Object;
.source "Cameras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/Cameras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraResult"
.end annotation


# instance fields
.field private final camera:Landroid/hardware/Camera;

.field private final properties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)V
    .registers 3
    .parameter "camera"
    .parameter "properties"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;->camera:Landroid/hardware/Camera;

    .line 121
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;->properties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    .line 122
    return-void
.end method


# virtual methods
.method public getCamera()Landroid/hardware/Camera;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getProperties()Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;->properties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    return-object v0
.end method
