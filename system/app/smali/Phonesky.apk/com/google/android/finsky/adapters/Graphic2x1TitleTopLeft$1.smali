.class Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$1;
.super Ljava/lang/Object;
.source "Graphic2x1TitleTopLeft.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->bind(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;

.field final synthetic val$holder:Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$1;->this$0:Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$1;->val$holder:Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 86
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 87
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$1;->val$holder:Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;

    iget-object v1, v1, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_18
    return-void

    .line 90
    :cond_19
    iget-object v1, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$1;->val$holder:Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;

    iget-object v1, v1, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$1;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
