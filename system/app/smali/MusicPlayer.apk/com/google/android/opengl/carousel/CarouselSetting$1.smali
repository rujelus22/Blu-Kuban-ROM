.class Lcom/google/android/opengl/carousel/CarouselSetting$1;
.super Ljava/lang/Object;
.source "CarouselSetting.java"

# interfaces
.implements Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/carousel/CarouselSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselSetting;


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselSetting$1;->this$0:Lcom/google/android/opengl/carousel/CarouselSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recycle(ILandroid/graphics/Bitmap;)V
    .registers 3
    .parameter "type"
    .parameter "bitmap"

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    return-void
.end method
