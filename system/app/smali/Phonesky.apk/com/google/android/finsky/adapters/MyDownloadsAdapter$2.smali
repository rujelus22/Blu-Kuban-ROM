.class Lcom/google/android/finsky/adapters/MyDownloadsAdapter$2;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->bindBitmapForAsset(Lcom/google/android/vending/model/Asset;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

.field final synthetic val$asset:Lcom/google/android/vending/model/Asset;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/vending/model/Asset;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$2;->this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$2;->val$asset:Lcom/google/android/vending/model/Asset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 549
    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    .line 553
    :goto_6
    return-void

    .line 552
    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$2;->this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$2;->val$asset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    #calls: Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->updateAssetIconIfNecessary(Lcom/google/android/vending/model/Asset;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->access$1100(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/vending/model/Asset;Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 546
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$2;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
