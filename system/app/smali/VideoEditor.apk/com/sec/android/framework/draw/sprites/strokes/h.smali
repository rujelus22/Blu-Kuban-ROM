.class public final Lcom/sec/android/framework/draw/sprites/strokes/h;
.super Lcom/sec/android/framework/draw/sprites/strokes/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 7
    invoke-direct {p0}, Lcom/sec/android/framework/draw/sprites/strokes/f;-><init>()V

    .line 8
    iput-boolean v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/h;->a:Z

    .line 9
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/h;->b:Landroid/graphics/Bitmap;

    .line 10
    return-void
.end method
