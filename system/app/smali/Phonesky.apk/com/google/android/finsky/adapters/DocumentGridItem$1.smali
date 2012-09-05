.class Lcom/google/android/finsky/adapters/DocumentGridItem$1;
.super Ljava/lang/Object;
.source "DocumentGridItem.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/DocumentGridItem;->bindImage(Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/DocumentGridItem;

.field final synthetic val$content:Landroid/view/View;

.field final synthetic val$fadeInAnimation:Landroid/view/animation/Animation;

.field final synthetic val$safeView:Landroid/widget/ImageView;

.field final synthetic val$temporaryDisplay:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/DocumentGridItem;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/android/finsky/adapters/DocumentGridItem$1;->this$0:Lcom/google/android/finsky/adapters/DocumentGridItem;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/DocumentGridItem$1;->val$temporaryDisplay:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/android/finsky/adapters/DocumentGridItem$1;->val$safeView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/google/android/finsky/adapters/DocumentGridItem$1;->val$content:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/finsky/adapters/DocumentGridItem$1;->val$fadeInAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 277
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem$1;->val$temporaryDisplay:Landroid/graphics/Bitmap;

    if-nez v0, :cond_21

    .line 278
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem$1;->val$safeView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem$1;->val$content:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/DocumentGridItem$1;->val$fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem$1;->val$content:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :cond_20
    :goto_20
    return-void

    .line 282
    :cond_21
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem$1;->val$safeView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageBitmapWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_20
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 273
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/DocumentGridItem$1;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
