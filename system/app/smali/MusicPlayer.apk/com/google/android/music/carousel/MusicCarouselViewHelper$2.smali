.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->recycleBitmaps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 536
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 537
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$302(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 539
    :cond_17
    return-void
.end method
