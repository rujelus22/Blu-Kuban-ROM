.class Lcom/google/android/maps/driveabout/vector/bt;
.super Lcom/google/android/maps/driveabout/vector/bh;


# instance fields
.field final synthetic j:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Z)V
    .registers 11

    const/4 v2, 0x5

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bt;->j:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    const/4 v3, 0x6

    if-eqz p2, :cond_11

    const/16 v6, 0x10

    :goto_9
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/bh;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;IIIIII)V

    return-void

    :cond_11
    move v6, v5

    goto :goto_9
.end method
