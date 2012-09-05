.class public Lcom/google/android/finsky/exploreactivity/RestoreData;
.super Ljava/lang/Object;
.source "RestoreData.java"


# instance fields
.field private final mCameraX1:F

.field private final mCameraX2:F

.field private final mCameraY1:F

.field private final mCameraY2:F

.field private final mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/exploreactivity/NodeController;FFFF)V
    .registers 6
    .parameter "nodeController"
    .parameter "cameraX1"
    .parameter "cameraX2"
    .parameter "cameraY1"
    .parameter "cameraY2"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/RestoreData;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    .line 35
    iput p2, p0, Lcom/google/android/finsky/exploreactivity/RestoreData;->mCameraX1:F

    .line 36
    iput p3, p0, Lcom/google/android/finsky/exploreactivity/RestoreData;->mCameraX2:F

    .line 37
    iput p4, p0, Lcom/google/android/finsky/exploreactivity/RestoreData;->mCameraY1:F

    .line 38
    iput p5, p0, Lcom/google/android/finsky/exploreactivity/RestoreData;->mCameraY2:F

    .line 39
    return-void
.end method


# virtual methods
.method public getCameraX1()F
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/RestoreData;->mCameraX1:F

    return v0
.end method

.method public getCameraX2()F
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/RestoreData;->mCameraX2:F

    return v0
.end method

.method public getCameraY1()F
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/RestoreData;->mCameraY1:F

    return v0
.end method

.method public getCameraY2()F
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/RestoreData;->mCameraY2:F

    return v0
.end method

.method public getNodeController()Lcom/google/android/finsky/exploreactivity/NodeController;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/RestoreData;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    return-object v0
.end method
