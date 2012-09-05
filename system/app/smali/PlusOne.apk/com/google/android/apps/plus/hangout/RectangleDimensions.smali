.class final Lcom/google/android/apps/plus/hangout/RectangleDimensions;
.super Ljava/lang/Object;
.source "RectangleDimensions.java"


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->width:I

    .line 13
    iput p2, p0, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->height:I

    .line 14
    return-void
.end method
