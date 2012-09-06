.class Lcom/google/android/maps/driveabout/vector/bG;
.super Lcom/google/android/maps/driveabout/vector/bx;
.source "SourceFile"


# instance fields
.field final synthetic j:Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;Z)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 767
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bG;->j:Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;

    .line 768
    const/4 v3, 0x6

    if-eqz p2, :cond_11

    const/16 v6, 0x10

    :goto_9
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/bx;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;IIIIII)V

    .line 769
    return-void

    :cond_11
    move v6, v5

    .line 768
    goto :goto_9
.end method
