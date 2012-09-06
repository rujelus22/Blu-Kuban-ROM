.class public Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
.super Ljava/lang/Object;
.source "Cameras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/Cameras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraProperties"
.end annotation


# static fields
.field public static final FROYO_CAMERA_PROPERTIES:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;


# instance fields
.field private final frontFacing:Z

.field private final orientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 93
    new-instance v0, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    const/4 v1, 0x0

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;-><init>(ZI)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;->FROYO_CAMERA_PROPERTIES:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 3
    .parameter "frontFacing"
    .parameter "orientation"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;->frontFacing:Z

    .line 98
    iput p2, p0, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;->orientation:I

    .line 99
    return-void
.end method


# virtual methods
.method public getOrientation()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;->orientation:I

    return v0
.end method

.method public isFrontFacing()Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;->frontFacing:Z

    return v0
.end method
