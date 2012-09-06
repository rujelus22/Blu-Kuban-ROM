.class Lcom/google/android/opengl/carousel/CarouselViewHelper$1;
.super Ljava/lang/Object;
.source "CarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/carousel/CarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselViewHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$1;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recycle(ILandroid/graphics/Bitmap;)V
    .registers 4
    .parameter "type"
    .parameter "bitmap"

    .prologue
    .line 58
    packed-switch p1, :pswitch_data_1c

    .line 68
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    :goto_6
    :pswitch_6
    return-void

    .line 60
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$1;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    #getter for: Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCardBitmapPool:Lcom/google/android/opengl/common/Pool;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$000(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Lcom/google/android/opengl/common/Pool;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/opengl/common/Pool;->delete(Ljava/lang/Object;)V

    goto :goto_6

    .line 63
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$1;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    #getter for: Lcom/google/android/opengl/carousel/CarouselViewHelper;->mDetailBitmapPool:Lcom/google/android/opengl/common/Pool;
    invoke-static {v0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$100(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Lcom/google/android/opengl/common/Pool;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/opengl/common/Pool;->delete(Ljava/lang/Object;)V

    goto :goto_6

    .line 58
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_11
    .end packed-switch
.end method
