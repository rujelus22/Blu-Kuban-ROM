.class public Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;
.super Ljava/lang/Object;
.source "CarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/carousel/CarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureParameters"
.end annotation


# instance fields
.field public mMatrix:[F


# direct methods
.method public constructor <init>([F)V
    .registers 5
    .parameter "matrix"

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;->mMatrix:[F

    .line 95
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;->mMatrix:[F

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;->mMatrix:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    return-void
.end method
