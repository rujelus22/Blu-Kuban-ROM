.class public Lcom/google/android/apps/unveil/env/gl/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/gl/Polygon$1;,
        Lcom/google/android/apps/unveil/env/gl/Polygon$DrawMode;
    }
.end annotation


# instance fields
.field private final vertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method private constructor <init>([F)V
    .registers 3
    .parameter "rawBuffer"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/gl/Utils;->generateFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/Polygon;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 46
    return-void
.end method

.method public static generateRect(FFFF)Lcom/google/android/apps/unveil/env/gl/Polygon;
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v3, 0x4000

    .line 28
    const/16 v1, 0x8

    new-array v0, v1, [F

    .line 29
    .local v0, rawBuffer:[F
    const/4 v1, 0x0

    neg-float v2, p2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 30
    const/4 v1, 0x1

    neg-float v2, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 32
    const/4 v1, 0x2

    neg-float v2, p2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 33
    const/4 v1, 0x3

    div-float v2, p3, v3

    aput v2, v0, v1

    .line 35
    const/4 v1, 0x4

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 36
    const/4 v1, 0x5

    div-float v2, p3, v3

    aput v2, v0, v1

    .line 38
    const/4 v1, 0x6

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 39
    const/4 v1, 0x7

    neg-float v2, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 41
    new-instance v1, Lcom/google/android/apps/unveil/env/gl/Polygon;

    invoke-direct {v1, v0}, Lcom/google/android/apps/unveil/env/gl/Polygon;-><init>([F)V

    return-object v1
.end method


# virtual methods
.method public bind(I)V
    .registers 8
    .parameter "location"

    .prologue
    const/4 v3, 0x0

    .line 53
    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/Polygon;->vertexBuffer:Ljava/nio/FloatBuffer;

    move v0, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 54
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 55
    return-void
.end method

.method public draw(Lcom/google/android/apps/unveil/env/gl/Polygon$DrawMode;)V
    .registers 5
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 62
    sget-object v0, Lcom/google/android/apps/unveil/env/gl/Polygon$1;->$SwitchMap$com$google$android$apps$unveil$env$gl$Polygon$DrawMode:[I

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/gl/Polygon$DrawMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 69
    :goto_c
    return-void

    .line 64
    :pswitch_d
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/Polygon;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_c

    .line 67
    :pswitch_1a
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/Polygon;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_c

    .line 62
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_d
        :pswitch_1a
    .end packed-switch
.end method
