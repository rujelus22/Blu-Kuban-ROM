.class Lcom/google/android/videochat/SelfRenderer$CameraInputData;
.super Ljava/lang/Object;
.source "SelfRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/SelfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraInputData"
.end annotation


# instance fields
.field public selfFrameTransform:[F


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/videochat/SelfRenderer$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer$CameraInputData;-><init>()V

    return-void
.end method
