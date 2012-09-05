.class Lcom/android/musicvis/vis5/Visualization5RS$WorldState;
.super Ljava/lang/Object;
.source "Visualization5RS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicvis/vis5/Visualization5RS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorldState"
.end annotation


# instance fields
.field public mAngle:F

.field public mIdle:I

.field public mPeak:I

.field public mRotate:F

.field public mTilt:F

.field public mWaveCounter:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
